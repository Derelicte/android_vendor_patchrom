.class public Lcom/android/phone/MiuiCallFeaturesSetting;
.super Landroid/preference/PreferenceActivity;
.source "MiuiCallFeaturesSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

.field private mButtonCallLogLimit:Landroid/preference/CheckBoxPreference;

.field private mButtonCrystalTalk:Landroid/preference/ListPreference;

.field private mButtonDTMF:Landroid/preference/ListPreference;

.field private mButtonHAC:Landroid/preference/CheckBoxPreference;

.field private mButtonTTY:Landroid/preference/ListPreference;

.field private mCallLogLimit:Landroid/preference/Preference;

.field private mCallLogLimitListener:Lcom/android/phone/MiuiNumberPickerDialog$OnNumberSetListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 339
    new-instance v0, Lcom/android/phone/MiuiCallFeaturesSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiCallFeaturesSetting$1;-><init>(Lcom/android/phone/MiuiCallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCallLogLimitListener:Lcom/android/phone/MiuiNumberPickerDialog$OnNumberSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiCallFeaturesSetting;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallFeaturesSetting;->setCallLogLimitNumber(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiCallFeaturesSetting;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCallLogLimit:Landroid/preference/Preference;

    return-object v0
.end method

.method private getCallLogLimitNumber()I
    .locals 3

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_log_limit_number"

    const/16 v2, 0x1f4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 364
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 365
    .local v0, buttonTtyMode:I
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 371
    .local v1, settingsTtyMode:I
    if-eq v0, v1, :cond_0

    .line 372
    packed-switch v0, :pswitch_data_0

    .line 381
    const/4 v0, 0x0

    .line 384
    :goto_0
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 385
    invoke-direct {p0, v0}, Lcom/android/phone/MiuiCallFeaturesSetting;->updatePreferredTtyModeSummary(I)V

    .line 386
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 387
    .local v2, ttyModeChanged:Landroid/content/Intent;
    const-string v3, "ttyPreferredMode"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 388
    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiCallFeaturesSetting;->sendBroadcast(Landroid/content/Intent;)V

    .line 390
    .end local v2           #ttyModeChanged:Landroid/content/Intent;
    :cond_0
    return-void

    .line 377
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setCallLogLimitNumber(I)V
    .locals 2
    .parameter "limit"

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_log_limit_number"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 360
    return-void
.end method

.method private updatePreferredTtyModeSummary(I)V
    .locals 4
    .parameter "TtyMode"

    .prologue
    const/4 v3, 0x0

    .line 393
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, txts:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 402
    iget-object v1, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 403
    iget-object v1, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 405
    :goto_0
    return-void

    .line 399
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 394
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    .line 162
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 163
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 165
    const v3, 0x7f050003

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 166
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 168
    .local v1, prefScreen:Landroid/preference/PreferenceScreen;
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 169
    .local v0, phoneType:I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 170
    const-string v3, "button_call_forwarding"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 171
    const-string v3, "button_call_waiting"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 172
    const-string v3, "button_caller_id"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 181
    :goto_0
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->supportCallRecording()Z

    move-result v3

    if-nez v3, :cond_0

    .line 182
    const-string v3, "button_auto_record_call"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 183
    const-string v3, "button_call_recording_notification"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 186
    :cond_0
    const-string v3, "button_dtmf_settings"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    .line 187
    const-string v3, "button_auto_retry"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    .line 188
    const-string v3, "button_hac"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    .line 189
    const-string v3, "button_tty_mode"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    .line 190
    const-string v3, "button_call_log_number_limit"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCallLogLimit:Landroid/preference/CheckBoxPreference;

    .line 191
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCallLogLimit:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 192
    const-string v3, "pref_key_call_log_limit"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCallLogLimit:Landroid/preference/Preference;

    .line 193
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eqz v3, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 195
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 201
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 203
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 209
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_3

    .line 210
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 211
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 217
    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v3, :cond_4

    .line 218
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 219
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 226
    :cond_4
    :goto_4
    const-string v3, "button_crystal_talk_settings"

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    .line 227
    sget-boolean v3, Lmiui/os/Build;->IS_MILESTONE:Z

    if-nez v3, :cond_5

    sget-boolean v3, Lmiui/os/Build;->IS_DEFY:Z

    if-eqz v3, :cond_c

    .line 228
    :cond_5
    new-instance v2, Lcom/android/phone/MiuiVoiceQualityUtility;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiVoiceQualityUtility;-><init>(Landroid/content/Context;)V

    .line 229
    .local v2, util:Lcom/android/phone/MiuiVoiceQualityUtility;
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Lcom/android/phone/MiuiVoiceQualityUtility;->getVoiceQualitySetting()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 230
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 236
    .end local v2           #util:Lcom/android/phone/MiuiVoiceQualityUtility;
    :goto_5
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 237
    return-void

    .line 173
    :cond_6
    const/4 v3, 0x1

    if-ne v0, v3, :cond_7

    .line 174
    const-string v3, "button_cdma_call_forwarding"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 175
    const-string v3, "button_cdma_cw"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 176
    const-string v3, "button_voice_privacy"

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 178
    :cond_7
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 197
    :cond_8
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 198
    iput-object v5, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    goto/16 :goto_1

    .line 205
    :cond_9
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 206
    iput-object v5, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_2

    .line 213
    :cond_a
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 214
    iput-object v5, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_3

    .line 221
    :cond_b
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 222
    iput-object v5, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    goto :goto_4

    .line 232
    :cond_c
    iget-object v3, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    invoke-static {v1, v3}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 233
    iput-object v5, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    goto :goto_5
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 298
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 299
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 300
    const-string v1, "com.android.contacts"

    const-string v2, "com.android.contacts.activities.TwelveKeyDialer"

    invoke-static {p0, v1, v2}, Lcom/android/phone/MiuiPhoneUtils;->goBackToParent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const/4 v1, 0x1

    .line 303
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v4, 0x1

    .line 132
    iget-object v5, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_1

    .line 133
    iget-object v5, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v5, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 134
    .local v1, index:I
    iget-object v5, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dtmf_tone_type"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 153
    .end local v1           #index:I
    :cond_0
    :goto_0
    return v4

    .line 136
    .restart local p2
    :cond_1
    iget-object v5, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_2

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MiuiCallFeaturesSetting;->handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v5, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_3

    .line 139
    iget-object v5, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v5, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 140
    .local v3, val:I
    new-instance v2, Lcom/android/phone/MiuiVoiceQualityUtility;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiVoiceQualityUtility;-><init>(Landroid/content/Context;)V

    .line 142
    .local v2, util:Lcom/android/phone/MiuiVoiceQualityUtility;
    invoke-virtual {v2, v3}, Lcom/android/phone/MiuiVoiceQualityUtility;->updateVoiceQualityParameter(I)V

    .line 143
    invoke-virtual {v2, v3}, Lcom/android/phone/MiuiVoiceQualityUtility;->setVoiceQualitySetting(I)V

    goto :goto_0

    .line 144
    .end local v2           #util:Lcom/android/phone/MiuiVoiceQualityUtility;
    .end local v3           #val:I
    .restart local p2
    :cond_3
    iget-object v5, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCallLogLimit:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_0

    .line 145
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    move v0, v4

    .line 146
    .local v0, enable:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "call_log_number_limit"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 145
    .end local v0           #enable:I
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x1

    .line 308
    iget-object v0, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-ne p2, v0, :cond_1

    .line 336
    :cond_0
    :goto_0
    return v1

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eq p2, v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 313
    iget-object v0, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_auto_retry"

    iget-object v0, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    move v0, v9

    goto :goto_1

    .line 317
    :cond_3
    iget-object v0, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6

    .line 318
    iget-object v0, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    move v8, v1

    .line 320
    .local v8, hac:I
    :goto_2
    iget-object v0, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "hearing_aid"

    invoke-static {v0, v2, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 324
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    .line 325
    .local v7, am:Landroid/media/AudioManager;
    const-string v2, "%s=%s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const-string v0, "HACSetting"

    aput-object v0, v3, v9

    if-eqz v8, :cond_5

    const-string v0, "ON"

    :goto_3
    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .end local v7           #am:Landroid/media/AudioManager;
    .end local v8           #hac:I
    :cond_4
    move v8, v9

    .line 318
    goto :goto_2

    .line 325
    .restart local v7       #am:Landroid/media/AudioManager;
    .restart local v8       #hac:I
    :cond_5
    const-string v0, "OFF"

    goto :goto_3

    .line 327
    .end local v7           #am:Landroid/media/AudioManager;
    .end local v8           #hac:I
    :cond_6
    iget-object v0, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCallLogLimit:Landroid/preference/Preference;

    if-ne p2, v0, :cond_7

    .line 328
    new-instance v0, Lcom/android/phone/MiuiNumberPickerDialog;

    iget-object v2, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCallLogLimitListener:Lcom/android/phone/MiuiNumberPickerDialog$OnNumberSetListener;

    invoke-direct {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getCallLogLimitNumber()I

    move-result v3

    const/16 v4, 0xa

    const/16 v5, 0x1388

    const v6, 0x7f0c029b

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/MiuiNumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/phone/MiuiNumberPickerDialog$OnNumberSetListener;IIII)V

    invoke-virtual {v0}, Lcom/android/phone/MiuiNumberPickerDialog;->show()V

    :cond_7
    move v1, v9

    .line 336
    goto :goto_0
.end method

.method protected onResume()V
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 241
    iget-object v11, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v11

    if-nez v11, :cond_9

    move v4, v9

    .line 242
    .local v4, fdnDisabled:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 243
    .local v7, prefScreen:Landroid/preference/PreferenceScreen;
    const-string v11, "button_call_forwarding"

    invoke-virtual {v7, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 244
    .local v6, pref:Landroid/preference/Preference;
    if-eqz v6, :cond_0

    .line 245
    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 247
    :cond_0
    const-string v11, "button_call_waiting"

    invoke-virtual {v7, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 248
    if-eqz v6, :cond_1

    .line 249
    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 251
    :cond_1
    const-string v11, "button_caller_id"

    invoke-virtual {v7, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 252
    if-eqz v6, :cond_2

    .line 253
    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 255
    :cond_2
    const-string v11, "button_cdma_call_forwarding"

    invoke-virtual {v7, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 256
    if-eqz v6, :cond_3

    .line 257
    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 259
    :cond_3
    const-string v11, "button_cdma_cw"

    invoke-virtual {v7, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 260
    if-eqz v6, :cond_4

    .line 261
    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 264
    :cond_4
    iget-object v11, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eqz v11, :cond_5

    .line 265
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "dtmf_tone_type"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 267
    .local v3, dtmf:I
    iget-object v11, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v11, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 269
    .end local v3           #dtmf:I
    :cond_5
    iget-object v11, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v11, :cond_6

    .line 270
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "call_auto_retry"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 272
    .local v0, autoretry:I
    iget-object v12, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_a

    move v11, v9

    :goto_1
    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 274
    .end local v0           #autoretry:I
    :cond_6
    iget-object v11, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v11, :cond_7

    .line 275
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "hearing_aid"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 276
    .local v5, hac:I
    iget-object v12, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_b

    move v11, v9

    :goto_2
    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 278
    .end local v5           #hac:I
    :cond_7
    iget-object v11, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v11, :cond_8

    .line 279
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "preferred_tty_mode"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 282
    .local v8, settingsTtyMode:I
    iget-object v11, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 283
    invoke-direct {p0, v8}, Lcom/android/phone/MiuiCallFeaturesSetting;->updatePreferredTtyModeSummary(I)V

    .line 286
    .end local v8           #settingsTtyMode:I
    :cond_8
    iget-object v12, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mButtonCallLogLimit:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "call_log_number_limit"

    invoke-static {v11, v13, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_c

    move v11, v9

    :goto_3
    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 290
    invoke-direct {p0}, Lcom/android/phone/MiuiCallFeaturesSetting;->getCallLogLimitNumber()I

    move-result v1

    .line 291
    .local v1, callLogLimitNumber:I
    const v11, 0x7f0c029c

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v10

    invoke-virtual {p0, v11, v9}, Lcom/android/phone/MiuiCallFeaturesSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, callLogLimitNumberStr:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/MiuiCallFeaturesSetting;->mCallLogLimit:Landroid/preference/Preference;

    invoke-virtual {v9, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 293
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 294
    return-void

    .end local v1           #callLogLimitNumber:I
    .end local v2           #callLogLimitNumberStr:Ljava/lang/String;
    .end local v4           #fdnDisabled:Z
    .end local v6           #pref:Landroid/preference/Preference;
    .end local v7           #prefScreen:Landroid/preference/PreferenceScreen;
    :cond_9
    move v4, v10

    .line 241
    goto/16 :goto_0

    .restart local v0       #autoretry:I
    .restart local v4       #fdnDisabled:Z
    .restart local v6       #pref:Landroid/preference/Preference;
    .restart local v7       #prefScreen:Landroid/preference/PreferenceScreen;
    :cond_a
    move v11, v10

    .line 272
    goto :goto_1

    .end local v0           #autoretry:I
    .restart local v5       #hac:I
    :cond_b
    move v11, v10

    .line 276
    goto :goto_2

    .end local v5           #hac:I
    :cond_c
    move v11, v10

    .line 286
    goto :goto_3
.end method
