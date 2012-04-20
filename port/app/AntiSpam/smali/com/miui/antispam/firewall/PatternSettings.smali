.class public Lcom/miui/antispam/firewall/PatternSettings;
.super Landroid/preference/PreferenceActivity;
.source "PatternSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAcceptWhitelist:Lmiui/preference/RadioButtonPreference;

.field private mPref:Landroid/content/SharedPreferences;

.field private mRadio2Value:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lmiui/preference/RadioButtonPreference;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRejectAll:Lmiui/preference/RadioButtonPreference;

.field private mRejectBlacklist:Lmiui/preference/RadioButtonPreference;

.field private mRejectBlacklistStranger:Lmiui/preference/RadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRadio2Value:Ljava/util/Map;

    return-void
.end method

.method private getCurrentOption()I
    .locals 3

    .prologue
    .line 83
    iget-object v2, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRadio2Value:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/preference/RadioButtonPreference;

    .line 84
    .local v1, radio:Lmiui/preference/RadioButtonPreference;
    invoke-virtual {v1}, Lmiui/preference/RadioButtonPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRadio2Value:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 88
    .end local v1           #radio:Lmiui/preference/RadioButtonPreference;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getCurrentOptionString(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    const v4, 0x7f06001a

    .line 147
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 148
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v2, "firewall_option_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 150
    .local v0, option_id:I
    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 163
    :goto_0
    return-object v2

    .line 153
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 154
    const v2, 0x7f06001d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 156
    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 157
    const v2, 0x7f06001e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 159
    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 160
    const v2, 0x7f06001b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 163
    :cond_3
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static saveSystemSetting(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 6
    .parameter "context"
    .parameter "pref"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 168
    const-string v1, "firewall_option_key"

    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 171
    .local v0, opt:I
    if-nez v0, :cond_1

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "blacklist_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "whitelist_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incoming_call_limit_setting"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "blacklist_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "whitelist_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incoming_call_limit_setting"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 189
    :cond_2
    if-ne v0, v5, :cond_3

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "blacklist_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "whitelist_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incoming_call_limit_setting"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 198
    :cond_3
    if-ne v0, v3, :cond_0

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "blacklist_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "whitelist_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incoming_call_limit_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private setRadioStatus(Landroid/preference/Preference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 106
    iget-object v2, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRadio2Value:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/preference/RadioButtonPreference;

    .line 107
    .local v1, radio:Lmiui/preference/RadioButtonPreference;
    if-eq v1, p1, :cond_0

    .line 108
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 110
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 113
    .end local v1           #radio:Lmiui/preference/RadioButtonPreference;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    .line 45
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/PatternSettings;->addPreferencesFromResource(I)V

    .line 49
    const-string v0, "opt_reject_blacklist"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/PatternSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectBlacklist:Lmiui/preference/RadioButtonPreference;

    .line 50
    iget-object v0, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectBlacklist:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 51
    iget-object v0, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRadio2Value:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectBlacklist:Lmiui/preference/RadioButtonPreference;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "opt_reject_blacklist_stranger"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/PatternSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectBlacklistStranger:Lmiui/preference/RadioButtonPreference;

    .line 54
    iget-object v0, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectBlacklistStranger:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 55
    iget-object v0, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRadio2Value:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectBlacklistStranger:Lmiui/preference/RadioButtonPreference;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v0, "opt_accept_whitelist"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/PatternSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/antispam/firewall/PatternSettings;->mAcceptWhitelist:Lmiui/preference/RadioButtonPreference;

    .line 58
    iget-object v0, p0, Lcom/miui/antispam/firewall/PatternSettings;->mAcceptWhitelist:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 59
    iget-object v0, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRadio2Value:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/antispam/firewall/PatternSettings;->mAcceptWhitelist:Lmiui/preference/RadioButtonPreference;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v0, "opt_reject_all"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/PatternSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectAll:Lmiui/preference/RadioButtonPreference;

    .line 62
    iget-object v0, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectAll:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    iget-object v0, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRadio2Value:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectAll:Lmiui/preference/RadioButtonPreference;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/firewall/PatternSettings;->mPref:Landroid/content/SharedPreferences;

    .line 67
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/PatternSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 68
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 72
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 79
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 74
    :pswitch_0
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/miui/antispam/firewall/FirewallTab;->gotoTab(Landroid/content/Context;I)V

    .line 76
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/PatternSettings;->finish()V

    .line 77
    const/4 v0, 0x1

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v2, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectBlacklist:Lmiui/preference/RadioButtonPreference;

    if-ne p1, v2, :cond_3

    move-object v0, p1

    .line 118
    check-cast v0, Lmiui/preference/RadioButtonPreference;

    .line 119
    .local v0, radio:Lmiui/preference/RadioButtonPreference;
    invoke-virtual {v0}, Lmiui/preference/RadioButtonPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 143
    .end local v0           #radio:Lmiui/preference/RadioButtonPreference;
    :cond_0
    :goto_0
    return v1

    .line 120
    .restart local v0       #radio:Lmiui/preference/RadioButtonPreference;
    :cond_1
    iget-object v1, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectBlacklist:Lmiui/preference/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/miui/antispam/firewall/PatternSettings;->setRadioStatus(Landroid/preference/Preference;)V

    .line 138
    .end local v0           #radio:Lmiui/preference/RadioButtonPreference;
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/miui/antispam/firewall/PatternSettings;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "firewall_option_key"

    invoke-direct {p0}, Lcom/miui/antispam/firewall/PatternSettings;->getCurrentOption()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    iget-object v1, p0, Lcom/miui/antispam/firewall/PatternSettings;->mPref:Landroid/content/SharedPreferences;

    invoke-static {p0, v1}, Lcom/miui/antispam/firewall/PatternSettings;->saveSystemSetting(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 140
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallTab;->updateOnNotification(Landroid/content/Context;)V

    .line 143
    const/4 v1, 0x1

    goto :goto_0

    .line 122
    .restart local p2
    :cond_3
    iget-object v2, p0, Lcom/miui/antispam/firewall/PatternSettings;->mAcceptWhitelist:Lmiui/preference/RadioButtonPreference;

    if-ne p1, v2, :cond_5

    move-object v0, p1

    .line 123
    check-cast v0, Lmiui/preference/RadioButtonPreference;

    .line 124
    .restart local v0       #radio:Lmiui/preference/RadioButtonPreference;
    invoke-virtual {v0}, Lmiui/preference/RadioButtonPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    :cond_4
    iget-object v1, p0, Lcom/miui/antispam/firewall/PatternSettings;->mAcceptWhitelist:Lmiui/preference/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/miui/antispam/firewall/PatternSettings;->setRadioStatus(Landroid/preference/Preference;)V

    goto :goto_1

    .line 127
    .end local v0           #radio:Lmiui/preference/RadioButtonPreference;
    .restart local p2
    :cond_5
    iget-object v2, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectAll:Lmiui/preference/RadioButtonPreference;

    if-ne p1, v2, :cond_7

    move-object v0, p1

    .line 128
    check-cast v0, Lmiui/preference/RadioButtonPreference;

    .line 129
    .restart local v0       #radio:Lmiui/preference/RadioButtonPreference;
    invoke-virtual {v0}, Lmiui/preference/RadioButtonPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    :cond_6
    iget-object v1, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectAll:Lmiui/preference/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/miui/antispam/firewall/PatternSettings;->setRadioStatus(Landroid/preference/Preference;)V

    goto :goto_1

    .line 132
    .end local v0           #radio:Lmiui/preference/RadioButtonPreference;
    .restart local p2
    :cond_7
    iget-object v2, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectBlacklistStranger:Lmiui/preference/RadioButtonPreference;

    if-ne p1, v2, :cond_2

    move-object v0, p1

    .line 133
    check-cast v0, Lmiui/preference/RadioButtonPreference;

    .line 134
    .restart local v0       #radio:Lmiui/preference/RadioButtonPreference;
    invoke-virtual {v0}, Lmiui/preference/RadioButtonPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_8

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    :cond_8
    iget-object v1, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectBlacklistStranger:Lmiui/preference/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/miui/antispam/firewall/PatternSettings;->setRadioStatus(Landroid/preference/Preference;)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 93
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 95
    iget-object v3, p0, Lcom/miui/antispam/firewall/PatternSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "firewall_option_key"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 97
    .local v1, option:I
    iget-object v3, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRadio2Value:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/preference/RadioButtonPreference;

    .line 98
    .local v2, radio:Lmiui/preference/RadioButtonPreference;
    iget-object v3, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRadio2Value:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 99
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 103
    .end local v2           #radio:Lmiui/preference/RadioButtonPreference;
    :cond_1
    return-void
.end method
