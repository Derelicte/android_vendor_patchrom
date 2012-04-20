.class public Lcom/android/calendar/GeneralPreferences;
.super Landroid/preference/PreferenceFragment;
.source "GeneralPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static mTimezones:[[Ljava/lang/CharSequence;


# instance fields
.field mAlert:Landroid/preference/CheckBoxPreference;

.field mDefaultReminder:Landroid/preference/ListPreference;

.field mHideDeclined:Landroid/preference/CheckBoxPreference;

.field mHomeTZ:Landroid/preference/ListPreference;

.field mPopup:Landroid/preference/CheckBoxPreference;

.field mRingtone:Landroid/preference/RingtonePreference;

.field mUseHomeTZ:Landroid/preference/CheckBoxPreference;

.field mVibrateWhen:Landroid/preference/ListPreference;

.field mWeekStart:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 115
    const-string v0, "com.android.calendar_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private migrateOldPreferences(Landroid/content/SharedPreferences;)V
    .locals 6
    .parameter "prefs"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 283
    const-string v2, "preferences_alerts_vibrateWhen"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "preferences_alerts_vibrate"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    const-string v2, "preferences_alerts_vibrate"

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const v0, 0x7f0c007c

    .line 288
    .local v0, stringId:I
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/calendar/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 291
    .end local v0           #stringId:I
    :cond_0
    const-string v2, "preferences_alerts"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "preferences_alerts_type"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 292
    const-string v2, "preferences_alerts_type"

    const-string v3, "1"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, type:Ljava/lang/String;
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 294
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 295
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 296
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 307
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "preferences_alerts_type"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 309
    .end local v1           #type:Ljava/lang/String;
    :cond_2
    return-void

    .line 285
    :cond_3
    const v0, 0x7f0c007d

    goto :goto_0

    .line 297
    .restart local v1       #type:Ljava/lang/String;
    :cond_4
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 298
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 299
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 300
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    .line 301
    :cond_5
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 303
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 304
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method public static setDefaultValues(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 120
    const-string v0, "com.android.calendar_preferences"

    const v1, 0x7f060003

    invoke-static {p0, v0, v2, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 122
    return-void
.end method

.method private setPreferenceListeners(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mUseHomeTZ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 193
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 194
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 195
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 196
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v0, p1}, Landroid/preference/RingtonePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 197
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mHideDeclined:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 198
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 200
    return-void
.end method

.method private updateChildPreferences()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 317
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 319
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v0, v1}, Landroid/preference/RingtonePreference;->setEnabled(Z)V

    .line 320
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 328
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/calendar/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c007d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 325
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v0, v3}, Landroid/preference/RingtonePreference;->setEnabled(Z)V

    .line 326
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/calendar/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 132
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/calendar/GeneralPreferences;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    .line 133
    .local v2, preferenceManager:Landroid/preference/PreferenceManager;
    invoke-static {v0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 134
    .local v4, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v8, "com.android.calendar_preferences"

    invoke-virtual {v2, v8}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 137
    const v8, 0x7f060003

    invoke-virtual {p0, v8}, Lcom/android/calendar/GeneralPreferences;->addPreferencesFromResource(I)V

    .line 139
    invoke-virtual {p0}, Lcom/android/calendar/GeneralPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 140
    .local v3, preferenceScreen:Landroid/preference/PreferenceScreen;
    const-string v8, "preferences_alerts"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    .line 141
    const-string v8, "preferences_alerts_vibrateWhen"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    .line 142
    const-string v8, "vibrator"

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Vibrator;

    .line 143
    .local v7, vibrator:Landroid/os/Vibrator;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v8

    if-nez v8, :cond_3

    .line 144
    :cond_0
    const-string v8, "preferences_alerts_category"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 146
    .local v1, mAlertGroup:Landroid/preference/PreferenceCategory;
    iget-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 151
    .end local v1           #mAlertGroup:Landroid/preference/PreferenceCategory;
    :goto_0
    const-string v8, "preferences_alerts_ringtone"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/RingtonePreference;

    iput-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    .line 152
    const-string v8, "preferences_alerts_popup"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    .line 153
    const-string v8, "preferences_home_tz_enabled"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mUseHomeTZ:Landroid/preference/CheckBoxPreference;

    .line 154
    const-string v8, "preferences_hide_declined"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mHideDeclined:Landroid/preference/CheckBoxPreference;

    .line 155
    const-string v8, "preferences_week_start_day"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    .line 156
    const-string v8, "preferences_default_reminder"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    .line 157
    const-string v8, "preferences_home_tz"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    .line 158
    iget-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, tz:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    sget-object v8, Lcom/android/calendar/GeneralPreferences;->mTimezones:[[Ljava/lang/CharSequence;

    if-nez v8, :cond_1

    .line 164
    new-instance v8, Lcom/android/calendar/TimezoneAdapter;

    invoke-direct {v8, v0, v5}, Lcom/android/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/calendar/TimezoneAdapter;->getAllTimezones()[[Ljava/lang/CharSequence;

    move-result-object v8

    sput-object v8, Lcom/android/calendar/GeneralPreferences;->mTimezones:[[Ljava/lang/CharSequence;

    .line 166
    :cond_1
    iget-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    sget-object v9, Lcom/android/calendar/GeneralPreferences;->mTimezones:[[Ljava/lang/CharSequence;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 167
    iget-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    sget-object v9, Lcom/android/calendar/GeneralPreferences;->mTimezones:[[Ljava/lang/CharSequence;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 168
    iget-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    .line 169
    .local v6, tzName:Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 170
    const/4 v8, 0x0

    invoke-static {v0, v8}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    .line 172
    :cond_2
    iget-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v8, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 174
    invoke-direct {p0, v4}, Lcom/android/calendar/GeneralPreferences;->migrateOldPreferences(Landroid/content/SharedPreferences;)V

    .line 176
    invoke-direct {p0}, Lcom/android/calendar/GeneralPreferences;->updateChildPreferences()V

    .line 177
    return-void

    .line 148
    .end local v5           #tz:Ljava/lang/String;
    .end local v6           #tzName:Ljava/lang/CharSequence;
    :cond_3
    iget-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 205
    invoke-virtual {p0}, Lcom/android/calendar/GeneralPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/GeneralPreferences;->setPreferenceListeners(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 208
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x1

    .line 237
    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mUseHomeTZ:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_2

    .line 238
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 239
    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, tz:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/calendar/Utils;->setTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    .line 273
    .end local v2           #tz:Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 241
    :cond_1
    const-string v2, "auto"

    .restart local v2       #tz:Ljava/lang/String;
    goto :goto_0

    .line 245
    .end local v2           #tz:Ljava/lang/String;
    .restart local p2
    :cond_2
    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mHideDeclined:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_3

    .line 246
    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mHideDeclined:Landroid/preference/CheckBoxPreference;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 247
    invoke-virtual {p0}, Lcom/android/calendar/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 248
    .local v0, act:Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getWidgetScheduledUpdateAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v1, intent:Landroid/content/Intent;
    sget-object v4, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "vnd.android.data/update"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 252
    .end local v0           #act:Landroid/app/Activity;
    .end local v1           #intent:Landroid/content/Intent;
    .restart local p2
    :cond_3
    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_4

    move-object v2, p2

    .line 253
    check-cast v2, Ljava/lang/String;

    .line 255
    .restart local v2       #tz:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 256
    iget-object v3, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/calendar/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/calendar/Utils;->setTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    .line 273
    .end local v2           #tz:Ljava/lang/String;
    .end local p2
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 258
    .restart local p2
    :cond_4
    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_5

    .line 259
    iget-object v3, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 260
    iget-object v3, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 261
    .restart local p2
    :cond_5
    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_6

    .line 262
    iget-object v3, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 263
    iget-object v3, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 264
    .restart local p2
    :cond_6
    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    if-eq p1, v4, :cond_0

    .line 267
    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_0

    .line 268
    iget-object v3, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 269
    iget-object v3, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 334
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, key:Ljava/lang/String;
    const-string v4, "preferences_clear_search_history"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 336
    new-instance v1, Landroid/provider/SearchRecentSuggestions;

    invoke-virtual {p0}, Lcom/android/calendar/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/calendar/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/calendar/Utils;->getSearchAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5, v2}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 339
    .local v1, suggestions:Landroid/provider/SearchRecentSuggestions;
    invoke-virtual {v1}, Landroid/provider/SearchRecentSuggestions;->clearHistory()V

    .line 340
    invoke-virtual {p0}, Lcom/android/calendar/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c006c

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 344
    .end local v1           #suggestions:Landroid/provider/SearchRecentSuggestions;
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 182
    invoke-virtual {p0}, Lcom/android/calendar/GeneralPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 184
    invoke-direct {p0, p0}, Lcom/android/calendar/GeneralPreferences;->setPreferenceListeners(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 185
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/calendar/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 213
    const-string v1, "preferences_alerts"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/android/calendar/GeneralPreferences;->updateChildPreferences()V

    .line 215
    if-eqz v0, :cond_0

    .line 216
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 217
    const-class v2, Lcom/android/calendar/alerts/AlertReceiver;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 218
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    const-string v2, "removeOldReminders"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 226
    :cond_0
    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 229
    :cond_1
    return-void

    .line 221
    :cond_2
    const-string v2, "android.intent.action.EVENT_REMINDER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
