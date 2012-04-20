.class public Lcom/android/settings/MiuiSoundSettings;
.super Lcom/android/settings/SoundSettings;
.source "MiuiSoundSettings.java"


# instance fields
.field private mHapticFeedbackLevel:Landroid/preference/ListPreference;

.field private mSmsDeliveredSoundPreference:Lcom/android/settings/SmsRingtonePreference;

.field private mSmsReceivedSoundPreference:Lcom/android/settings/SmsRingtonePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;-><init>()V

    return-void
.end method

.method private fillDefaultSmsSound(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, v:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_sound"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 88
    :cond_0
    return-void
.end method

.method private getHapticFeedbackLevelValue()I
    .locals 4

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_level"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 102
    .local v0, level:I
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method private setHapticFeedbackLevelValue(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_level"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method


# virtual methods
.method protected handleOthersSummery(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 44
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsReceivedSoundPreference:Lcom/android/settings/SmsRingtonePreference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/settings/SmsRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 47
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsDeliveredSoundPreference:Lcom/android/settings/SmsRingtonePreference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/settings/SmsRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/SoundSettings;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const-string v0, "haptic_feedback_level"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    .line 57
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings/MiuiSoundSettings;->getHapticFeedbackLevelValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 61
    const-string v0, "sms_received_sound"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SmsRingtonePreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsReceivedSoundPreference:Lcom/android/settings/SmsRingtonePreference;

    .line 62
    const-string v0, "sms_delivered_sound"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SmsRingtonePreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsDeliveredSoundPreference:Lcom/android/settings/SmsRingtonePreference;

    .line 64
    const-string v0, "sms_received_sound"

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSoundSettings;->fillDefaultSmsSound(Ljava/lang/String;)V

    .line 65
    const-string v0, "sms_delivered_sound"

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSoundSettings;->fillDefaultSmsSound(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Lcom/android/settings/SoundSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 110
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSoundSettings;->setHapticFeedbackLevelValue(I)V

    .line 112
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected ringtoneLookupOthers()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsReceivedSoundPreference:Lcom/android/settings/SmsRingtonePreference;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsReceivedSoundPreference:Lcom/android/settings/SmsRingtonePreference;

    invoke-virtual {v0}, Lcom/android/settings/SmsRingtonePreference;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSoundSettings;->updateRingtoneName(Landroid/net/Uri;I)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsDeliveredSoundPreference:Lcom/android/settings/SmsRingtonePreference;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsDeliveredSoundPreference:Lcom/android/settings/SmsRingtonePreference;

    invoke-virtual {v0}, Lcom/android/settings/SmsRingtonePreference;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSoundSettings;->updateRingtoneName(Landroid/net/Uri;I)V

    .line 78
    :cond_1
    return-void
.end method
