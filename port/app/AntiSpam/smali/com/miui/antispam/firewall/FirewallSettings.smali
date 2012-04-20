.class public Lcom/miui/antispam/firewall/FirewallSettings;
.super Landroid/preference/PreferenceFragment;
.source "FirewallSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAction:Landroid/preference/PreferenceScreen;

.field private mActivity:Landroid/app/Activity;

.field private mAntiPrivate:Landroid/preference/CheckBoxPreference;

.field private mAntiStranger:Landroid/preference/CheckBoxPreference;

.field private mEnableFirewall:Landroid/preference/CheckBoxPreference;

.field private mEnableTimeLimit:Landroid/preference/PreferenceScreen;

.field private mFilterSms:Landroid/preference/CheckBoxPreference;

.field private mPattern:Landroid/preference/PreferenceScreen;

.field private mPref:Landroid/content/SharedPreferences;

.field private mShowNotification:Landroid/preference/CheckBoxPreference;

.field private mShowOn:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FirewallSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mActivity:Landroid/app/Activity;

    .line 43
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mPref:Landroid/content/SharedPreferences;

    .line 44
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/FirewallSettings;->addPreferencesFromResource(I)V

    .line 46
    const-string v0, "fw_enable_firewall"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/FirewallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mEnableFirewall:Landroid/preference/CheckBoxPreference;

    .line 47
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mEnableFirewall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 49
    const-string v0, "fw_pattern_settings"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/FirewallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mPattern:Landroid/preference/PreferenceScreen;

    .line 50
    const-string v0, "fw_action_settings"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/FirewallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mAction:Landroid/preference/PreferenceScreen;

    .line 52
    const-string v0, "fw_show_firewall_notification"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/FirewallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mShowOn:Landroid/preference/CheckBoxPreference;

    .line 53
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mShowOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 55
    const-string v0, "fw_show_notification"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/FirewallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mShowNotification:Landroid/preference/CheckBoxPreference;

    .line 56
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mShowNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 58
    const-string v0, "anti_stranger_call"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/FirewallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mAntiStranger:Landroid/preference/CheckBoxPreference;

    .line 59
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mAntiStranger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 61
    const-string v0, "anti_private_call"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/FirewallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mAntiPrivate:Landroid/preference/CheckBoxPreference;

    .line 62
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mAntiPrivate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 64
    const-string v0, "filter_stranger_sms"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/FirewallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mFilterSms:Landroid/preference/CheckBoxPreference;

    .line 65
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mFilterSms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 67
    const-string v0, "fw_enable_time_limit"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/FirewallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mEnableTimeLimit:Landroid/preference/PreferenceScreen;

    .line 68
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mEnableFirewall:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mActivity:Landroid/app/Activity;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-static {v0, p2}, Lcom/miui/antispam/firewall/FirewallHelper;->setFirewallEnalbed(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 88
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallTab;->updateOnNotification(Landroid/content/Context;)V

    .line 107
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 90
    .restart local p2
    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mShowOn:Landroid/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_2

    .line 91
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fw_show_firewall_notification"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallTab;->updateOnNotification(Landroid/content/Context;)V

    goto :goto_0

    .line 94
    .restart local p2
    :cond_2
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mShowNotification:Landroid/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_3

    .line 95
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fw_show_notification"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 97
    .restart local p2
    :cond_3
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mAntiStranger:Landroid/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_4

    .line 98
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mActivity:Landroid/app/Activity;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-static {v0, p2}, Lcom/miui/antispam/firewall/FirewallHelper;->setAntiStrangerEnabled(Landroid/content/Context;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 100
    .restart local p2
    :cond_4
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mAntiPrivate:Landroid/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_5

    .line 101
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mActivity:Landroid/app/Activity;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-static {v0, p2}, Lcom/miui/antispam/firewall/FirewallHelper;->setAntiPrivateEnabled(Landroid/content/Context;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 103
    .restart local p2
    :cond_5
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mFilterSms:Landroid/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mActivity:Landroid/app/Activity;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-static {v0, p2}, Lcom/miui/antispam/firewall/FirewallHelper;->setFilterSmsEnabled(Landroid/content/Context;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 75
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mEnableFirewall:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallHelper;->getFirewallEnalbed(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 76
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mPattern:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/antispam/firewall/PatternSettings;->getCurrentOptionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mAction:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/antispam/firewall/ActionSettings;->getActionSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mAntiStranger:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallHelper;->getAntiStrangerEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 79
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mAntiPrivate:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallHelper;->getAntiPrivateEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 80
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mFilterSms:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallHelper;->getFilterSmsEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 81
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mEnableTimeLimit:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/antispam/firewall/TimeSettings;->getCurrentOptionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method
