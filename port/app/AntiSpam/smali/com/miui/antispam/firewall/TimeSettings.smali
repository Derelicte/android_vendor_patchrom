.class public Lcom/miui/antispam/firewall/TimeSettings;
.super Landroid/preference/PreferenceActivity;
.source "TimeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAllDay:Lmiui/preference/RadioButtonPreference;

.field private mEndTime:Landroid/preference/Preference;

.field private mEndTimeListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private mPeriod:Lmiui/preference/RadioButtonPreference;

.field private mStartTime:Landroid/preference/Preference;

.field private mStartTimeListener:Landroid/app/TimePickerDialog$OnTimeSetListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 29
    new-instance v0, Lcom/miui/antispam/firewall/TimeSettings$1;

    invoke-direct {v0, p0}, Lcom/miui/antispam/firewall/TimeSettings$1;-><init>(Lcom/miui/antispam/firewall/TimeSettings;)V

    iput-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mStartTimeListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 38
    new-instance v0, Lcom/miui/antispam/firewall/TimeSettings$2;

    invoke-direct {v0, p0}, Lcom/miui/antispam/firewall/TimeSettings$2;-><init>(Lcom/miui/antispam/firewall/TimeSettings;)V

    iput-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mEndTimeListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic access$000(II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-static {p0, p1}, Lcom/miui/antispam/firewall/TimeSettings;->formatTime(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/antispam/firewall/TimeSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mStartTime:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/antispam/firewall/TimeSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mEndTime:Landroid/preference/Preference;

    return-object v0
.end method

.method private static formatTime(I)Ljava/lang/String;
    .locals 2
    .parameter "totalMinute"

    .prologue
    .line 96
    div-int/lit8 v0, p0, 0x3c

    rem-int/lit8 v1, p0, 0x3c

    invoke-static {v0, v1}, Lcom/miui/antispam/firewall/TimeSettings;->formatTime(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatTime(II)Ljava/lang/String;
    .locals 2
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 87
    .local v0, builder:Ljava/lang/StringBuilder;
    div-int/lit8 v1, p0, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    rem-int/lit8 v1, p0, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    div-int/lit8 v1, p1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    rem-int/lit8 v1, p1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static formatTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 100
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getStartTime(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/miui/antispam/firewall/TimeSettings;->formatTime(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, startTime:Ljava/lang/String;
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getEndTime(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/miui/antispam/firewall/TimeSettings;->formatTime(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, endTime:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getCurrentOptionString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 78
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getTimeLimitEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {p0}, Lcom/miui/antispam/firewall/TimeSettings;->formatTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updatePreference()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 107
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getTimeLimitEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mPeriod:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 109
    iget-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mAllDay:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mPeriod:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 113
    iget-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mAllDay:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/TimeSettings;->addPreferencesFromResource(I)V

    .line 53
    const-string v0, "fw_all_day"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/TimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mAllDay:Lmiui/preference/RadioButtonPreference;

    .line 54
    iget-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mAllDay:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 56
    const-string v0, "fw_period"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/TimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mPeriod:Lmiui/preference/RadioButtonPreference;

    .line 57
    iget-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mPeriod:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 59
    const-string v0, "fw_start_time"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/TimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mStartTime:Landroid/preference/Preference;

    .line 60
    const-string v0, "fw_end_time"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/TimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mEndTime:Landroid/preference/Preference;

    .line 62
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/TimeSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 63
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    .line 156
    new-instance v0, Landroid/app/TimePickerDialog;

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/miui/antispam/firewall/TimeSettings;->mStartTimeListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    :goto_0
    const/16 v3, 0xb

    const/16 v4, 0xc

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 163
    .local v0, d:Landroid/app/Dialog;
    return-object v0

    .line 156
    .end local v0           #d:Landroid/app/Dialog;
    :cond_0
    iget-object v2, p0, Lcom/miui/antispam/firewall/TimeSettings;->mEndTimeListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 67
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 74
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 69
    :pswitch_0
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/miui/antispam/firewall/FirewallTab;->gotoTab(Landroid/content/Context;I)V

    .line 71
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/TimeSettings;->finish()V

    .line 72
    const/4 v0, 0x1

    goto :goto_0

    .line 67
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
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 132
    iget-object v1, p0, Lcom/miui/antispam/firewall/TimeSettings;->mPeriod:Lmiui/preference/RadioButtonPreference;

    if-ne v1, p1, :cond_3

    move-object v0, p1

    .line 133
    check-cast v0, Lmiui/preference/RadioButtonPreference;

    .line 134
    .local v0, radio:Lmiui/preference/RadioButtonPreference;
    invoke-virtual {v0}, Lmiui/preference/RadioButtonPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    .end local v0           #radio:Lmiui/preference/RadioButtonPreference;
    .end local p2
    :cond_0
    :goto_0
    return v3

    .line 136
    .restart local v0       #radio:Lmiui/preference/RadioButtonPreference;
    .restart local p2
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-static {p0, p2}, Lcom/miui/antispam/firewall/FirewallHelper;->setTimeLimitEnabled(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 137
    invoke-direct {p0}, Lcom/miui/antispam/firewall/TimeSettings;->updatePreference()V

    .line 138
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallTab;->updateOnNotification(Landroid/content/Context;)V

    .end local v0           #radio:Lmiui/preference/RadioButtonPreference;
    :cond_2
    :goto_1
    move v3, v2

    .line 149
    goto :goto_0

    .line 140
    .restart local p2
    :cond_3
    iget-object v1, p0, Lcom/miui/antispam/firewall/TimeSettings;->mAllDay:Lmiui/preference/RadioButtonPreference;

    if-ne v1, p1, :cond_2

    move-object v0, p1

    .line 141
    check-cast v0, Lmiui/preference/RadioButtonPreference;

    .line 142
    .restart local v0       #radio:Lmiui/preference/RadioButtonPreference;
    invoke-virtual {v0}, Lmiui/preference/RadioButtonPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    :cond_4
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/antispam/firewall/FirewallHelper;->setTimeLimitEnabled(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 145
    invoke-direct {p0}, Lcom/miui/antispam/firewall/TimeSettings;->updatePreference()V

    .line 146
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallTab;->updateOnNotification(Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    move v1, v3

    .line 144
    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 190
    iget-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mStartTime:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 191
    invoke-virtual {p0, v1}, Lcom/miui/antispam/firewall/TimeSettings;->showDialog(I)V

    .line 197
    :cond_0
    :goto_0
    return v1

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mEndTime:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 194
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/TimeSettings;->showDialog(I)V

    goto :goto_0
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 4
    .parameter "id"
    .parameter "d"

    .prologue
    .line 168
    packed-switch p1, :pswitch_data_0

    .line 186
    .end local p2
    :goto_0
    return-void

    .line 170
    .restart local p2
    :pswitch_0
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getStartTime(Landroid/content/Context;)I

    move-result v1

    .line 171
    .local v1, startTime:I
    check-cast p2, Landroid/app/TimePickerDialog;

    .end local p2
    div-int/lit8 v2, v1, 0x3c

    rem-int/lit8 v3, v1, 0x3c

    invoke-virtual {p2, v2, v3}, Landroid/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    .line 177
    .end local v1           #startTime:I
    .restart local p2
    :pswitch_1
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getEndTime(Landroid/content/Context;)I

    move-result v0

    .line 178
    .local v0, endTime:I
    check-cast p2, Landroid/app/TimePickerDialog;

    .end local p2
    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v3, v0, 0x3c

    invoke-virtual {p2, v2, v3}, Landroid/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 119
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 121
    invoke-direct {p0}, Lcom/miui/antispam/firewall/TimeSettings;->updatePreference()V

    .line 123
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getStartTime(Landroid/content/Context;)I

    move-result v1

    .line 124
    .local v1, startTime:I
    iget-object v2, p0, Lcom/miui/antispam/firewall/TimeSettings;->mStartTime:Landroid/preference/Preference;

    invoke-static {v1}, Lcom/miui/antispam/firewall/TimeSettings;->formatTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 126
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getEndTime(Landroid/content/Context;)I

    move-result v0

    .line 127
    .local v0, endTime:I
    iget-object v2, p0, Lcom/miui/antispam/firewall/TimeSettings;->mEndTime:Landroid/preference/Preference;

    invoke-static {v0}, Lcom/miui/antispam/firewall/TimeSettings;->formatTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method
