.class public Lcom/android/phone/MiuiAutoIpSetting;
.super Landroid/preference/PreferenceActivity;
.source "MiuiAutoIpSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAutoIpEnable:Landroid/preference/CheckBoxPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

.field private mTextIpPrefix:Landroid/preference/EditTextPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 5

    .prologue
    const v4, 0x7f0c0285

    const v3, 0x1010355

    .line 111
    iget-object v0, p0, Lcom/android/phone/MiuiAutoIpSetting;->mAutoIpEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/android/phone/MiuiAutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autoip_prefix"

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0315

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 128
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiAutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_areacode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0274

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 127
    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/MiuiAutoIpSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 73
    const v2, 0x7f050001

    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiAutoIpSetting;->addPreferencesFromResource(I)V

    .line 75
    const-string v2, "button_autoip"

    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiAutoIpSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/MiuiAutoIpSetting;->mAutoIpEnable:Landroid/preference/CheckBoxPreference;

    .line 76
    invoke-virtual {p0}, Lcom/android/phone/MiuiAutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "button_autoip"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    .line 78
    .local v1, isAutoIpEnabled:Z
    :goto_0
    iget-object v2, p0, Lcom/android/phone/MiuiAutoIpSetting;->mAutoIpEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 79
    iget-object v2, p0, Lcom/android/phone/MiuiAutoIpSetting;->mAutoIpEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    const-string v2, "button_text_ip_prefix"

    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiAutoIpSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/phone/MiuiAutoIpSetting;->mTextIpPrefix:Landroid/preference/EditTextPreference;

    .line 82
    iget-object v2, p0, Lcom/android/phone/MiuiAutoIpSetting;->mTextIpPrefix:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/phone/MiuiAutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "autoip_prefix"

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lmiui/provider/ExtraSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, ipPrefix:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/MiuiAutoIpSetting;->mTextIpPrefix:Landroid/preference/EditTextPreference;

    const v5, 0x7f0c0316

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p0, v5, v3}, Lcom/android/phone/MiuiAutoIpSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 89
    const-string v2, "button_text_current_areacode"

    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiAutoIpSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/phone/MiuiAutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    .line 90
    iget-object v2, p0, Lcom/android/phone/MiuiAutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 92
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 93
    return-void

    .end local v0           #ipPrefix:Ljava/lang/String;
    .end local v1           #isAutoIpEnabled:Z
    :cond_0
    move v1, v4

    .line 76
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 132
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 133
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 134
    const-class v0, Lcom/android/phone/MiuiCallFeaturesSetting;

    invoke-static {p0, v0}, Lcom/android/phone/MiuiPhoneUtils;->goBackToParent(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 135
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/phone/MiuiAutoIpSetting;->mAutoIpEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/android/phone/MiuiAutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autoip_prefix"

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/MiuiAutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_areacode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiAutoIpSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "button_autoip"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 107
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 42
    iget-object v5, p0, Lcom/android/phone/MiuiAutoIpSetting;->mTextIpPrefix:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_2

    move-object v2, p2

    .line 43
    check-cast v2, Ljava/lang/String;

    .line 44
    .local v2, ipPrefix:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 45
    iget-object v5, p0, Lcom/android/phone/MiuiAutoIpSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 47
    :cond_0
    iget-object v5, p0, Lcom/android/phone/MiuiAutoIpSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "autoip_prefix"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 51
    iget-object v5, p0, Lcom/android/phone/MiuiAutoIpSetting;->mTextIpPrefix:Landroid/preference/EditTextPreference;

    const v6, 0x7f0c0316

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v2, v7, v3

    invoke-virtual {p0, v6, v7}, Lcom/android/phone/MiuiAutoIpSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 64
    .end local v2           #ipPrefix:Ljava/lang/String;
    .end local p2
    :cond_1
    :goto_0
    return v4

    .line 52
    .restart local p2
    :cond_2
    iget-object v5, p0, Lcom/android/phone/MiuiAutoIpSetting;->mAutoIpEnable:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_4

    .line 53
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 54
    .local v1, flag:Z
    iget-object v5, p0, Lcom/android/phone/MiuiAutoIpSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "button_autoip"

    if-eqz v1, :cond_3

    move v3, v4

    :cond_3
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 58
    .end local v1           #flag:Z
    .restart local p2
    :cond_4
    iget-object v3, p0, Lcom/android/phone/MiuiAutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    if-ne p1, v3, :cond_1

    move-object v0, p2

    .line 59
    check-cast v0, Ljava/lang/String;

    .line 60
    .local v0, currentAreaCode:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/MiuiAutoIpSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "current_areacode"

    invoke-static {v3, v5, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
