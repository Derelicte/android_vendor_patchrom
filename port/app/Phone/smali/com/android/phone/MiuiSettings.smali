.class public Lcom/android/phone/MiuiSettings;
.super Lcom/android/phone/Settings;
.source "MiuiSettings.java"


# instance fields
.field private mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/phone/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method protected createCdmaOptions(Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/CdmaOptions;
    .locals 1
    .parameter "prefScreen"
    .parameter "phone"

    .prologue
    .line 42
    new-instance v0, Lcom/android/phone/MiuiCdmaOptions;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/phone/MiuiCdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method protected createGsmUmtsOptions(Landroid/preference/PreferenceScreen;)Lcom/android/phone/GsmUmtsOptions;
    .locals 1
    .parameter "prefScreen"

    .prologue
    .line 37
    new-instance v0, Lcom/android/phone/MiuiGsmUmtsOptions;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/MiuiGsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    return-object v0
.end method

.method protected getPreferenceResource()I
    .locals 1

    .prologue
    .line 32
    const v0, 0x7f050017

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/phone/Settings;->onCreate(Landroid/os/Bundle;)V

    .line 49
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/MiuiSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    .line 50
    invoke-virtual {p0}, Lcom/android/phone/MiuiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "button_mms_enabled_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/MiuiSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    .line 53
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 54
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 20
    iget-object v0, p0, Lcom/android/phone/MiuiSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/android/phone/MiuiSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "always_enable_mms"

    iget-object v0, p0, Lcom/android/phone/MiuiSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 27
    :goto_1
    return v1

    .line 21
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 27
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/phone/Settings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 58
    invoke-super {p0}, Lcom/android/phone/Settings;->onResume()V

    .line 59
    iget-object v1, p0, Lcom/android/phone/MiuiSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/phone/MiuiSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "always_enable_mms"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 62
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
