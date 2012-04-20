.class public Lcom/android/mms/ui/MessagingPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mLaunchThemeModifyPref:Landroid/preference/PreferenceScreen;

.field private mMessageThemePref:Landroid/preference/PreferenceScreen;

.field private mNotificationBodyPref:Landroid/preference/CheckBoxPreference;

.field private mNotificationPref:Landroid/preference/CheckBoxPreference;

.field private mPopupPref:Landroid/preference/CheckBoxPreference;

.field private mSignaturePref:Landroid/preference/EditTextPreference;

.field private mWakeupScreenPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static enableNotifications(ZLandroid/content/Context;)V
    .locals 3
    .parameter "enabled"
    .parameter "context"

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pref_key_enable_notification"

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 236
    return-void

    .line 235
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNotificationEnabled(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 231
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getPrefNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getSignatureSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "signature"

    .prologue
    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .local v1, summary:Ljava/lang/StringBuilder;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 223
    .local v0, nextlineindex:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 224
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const v3, 0x30c0190

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initPreference()V
    .locals 2

    .prologue
    .line 124
    const-string v0, "pref_key_enable_notification"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationPref:Landroid/preference/CheckBoxPreference;

    .line 125
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 126
    const-string v0, "pref_key_enable_notification_body"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationBodyPref:Landroid/preference/CheckBoxPreference;

    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationBodyPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 128
    const-string v0, "pref_key_enable_new_message_popup"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPopupPref:Landroid/preference/CheckBoxPreference;

    .line 129
    const-string v0, "pref_key_enable_wake_up_screen"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mWakeupScreenPref:Landroid/preference/CheckBoxPreference;

    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mWakeupScreenPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    const-string v0, "pref_key_launch_theme_modify"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mLaunchThemeModifyPref:Landroid/preference/PreferenceScreen;

    .line 134
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mLaunchThemeModifyPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 135
    const-string v0, "pref_key_message_theme_setting"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMessageThemePref:Landroid/preference/PreferenceScreen;

    .line 138
    const-string v0, "pref_key_edit_signature"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    .line 139
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSignatureSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 143
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 107
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 109
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->initPreference()V

    .line 110
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 114
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 119
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 116
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->finish()V

    .line 117
    const/4 v0, 0x1

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 159
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    if-ne p1, v4, :cond_4

    .line 160
    if-nez p2, :cond_1

    const-string v1, ""

    .line 161
    .local v1, signature:Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 162
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a017a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .end local v1           #signature:Ljava/lang/String;
    .end local p2
    :cond_0
    :goto_1
    move v2, v3

    .line 190
    :goto_2
    return v2

    .line 160
    .restart local p2
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 165
    .restart local v1       #signature:Ljava/lang/String;
    :cond_2
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 168
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSignatureSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 171
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSignatureSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 174
    .end local v1           #signature:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_6

    .line 175
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 176
    .local v0, isChecked:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pref_key_enable_notification"

    if-eqz v0, :cond_5

    move v2, v3

    :cond_5
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 179
    .end local v0           #isChecked:Z
    .restart local p2
    :cond_6
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationBodyPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_8

    .line 180
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 181
    .restart local v0       #isChecked:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pref_key_enable_notification_body"

    if-eqz v0, :cond_7

    move v2, v3

    :cond_7
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 184
    .end local v0           #isChecked:Z
    .restart local p2
    :cond_8
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mWakeupScreenPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_0

    .line 185
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 186
    .restart local v0       #isChecked:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pref_key_enable_wake_up_screen"

    if-eqz v0, :cond_9

    move v2, v3

    :cond_9
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mLaunchThemeModifyPref:Landroid/preference/PreferenceScreen;

    if-ne p1, v1, :cond_0

    .line 148
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 149
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.thememanager"

    const-string v3, "com.android.thememanager.ThemeResourceTabActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 150
    const-string v1, "com.android.thememanager.extra_theme_apply_flags"

    const-wide/16 v2, 0x80

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 152
    const/4 v1, 0x1

    .line 154
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 195
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 196
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationPref:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getPrefNotificationEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 197
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationBodyPref:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getPrefNotificationBodyEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 198
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mWakeupScreenPref:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getPrefWakeupScreenEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 200
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAccessControlled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationBodyPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 202
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationBodyPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0a0161

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 203
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPopupPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 204
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPopupPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0a0164

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 212
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->getConversationStyle(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, style:Ljava/lang/String;
    sget-object v1, Lcom/android/mms/ui/MessageListItem$Style;->bubble:Lcom/android/mms/ui/MessageListItem$Style;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListItem$Style;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    :cond_0
    return-void

    .line 206
    .end local v0           #style:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationBodyPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 207
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationBodyPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0a0160

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 208
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPopupPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 209
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPopupPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0a0163

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method
