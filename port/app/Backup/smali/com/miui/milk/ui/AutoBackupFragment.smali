.class public Lcom/miui/milk/ui/AutoBackupFragment;
.super Landroid/preference/PreferenceFragment;
.source "AutoBackupFragment.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field private mAutoBackup:Landroid/preference/CheckBoxPreference;

.field private mAutoBackupChoose:Landroid/preference/Preference;

.field private mAutoBackupTime:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private refreshUI()V
    .locals 4

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/miui/milk/ui/AutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/milk/common/AutoBackup;->getAutoBackupHour(Landroid/content/Context;)I

    move-result v0

    .line 63
    .local v0, hour:I
    invoke-virtual {p0}, Lcom/miui/milk/ui/AutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/milk/common/AutoBackup;->getAutoBackupMinute(Landroid/content/Context;)I

    move-result v1

    .line 64
    .local v1, minute:I
    invoke-direct {p0, v0, v1}, Lcom/miui/milk/ui/AutoBackupFragment;->updateTimeUI(II)V

    .line 66
    invoke-virtual {p0}, Lcom/miui/milk/ui/AutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/milk/common/AutoBackup;->getAutoBackupApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, summary:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/milk/ui/AutoBackupFragment;->mAutoBackupChoose:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method

.method private showTimePicker()V
    .locals 6

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/miui/milk/ui/AutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/milk/common/AutoBackup;->getAutoBackupHour(Landroid/content/Context;)I

    move-result v3

    .line 72
    .local v3, hour:I
    invoke-virtual {p0}, Lcom/miui/milk/ui/AutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/milk/common/AutoBackup;->getAutoBackupMinute(Landroid/content/Context;)I

    move-result v4

    .line 73
    .local v4, minute:I
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/miui/milk/ui/AutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/milk/ui/AutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 75
    return-void
.end method

.method private updateTimeUI(II)V
    .locals 4
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/miui/milk/ui/AutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "kk:mm"

    .line 89
    .local v1, format:Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 90
    .local v0, cal:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 91
    const/16 v2, 0xb

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 92
    const/16 v2, 0xc

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 93
    iget-object v2, p0, Lcom/miui/milk/ui/AutoBackupFragment;->mAutoBackupTime:Landroid/preference/Preference;

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 94
    return-void

    .line 88
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v1           #format:Ljava/lang/String;
    :cond_0
    const-string v1, " aa h:mm"

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 34
    const-string v0, "auto_backup"

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/AutoBackupFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/milk/ui/AutoBackupFragment;->mAutoBackup:Landroid/preference/CheckBoxPreference;

    .line 35
    const-string v0, "auto_backup_time"

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/AutoBackupFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/ui/AutoBackupFragment;->mAutoBackupTime:Landroid/preference/Preference;

    .line 36
    const-string v0, "auto_backup_choose"

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/AutoBackupFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/ui/AutoBackupFragment;->mAutoBackupChoose:Landroid/preference/Preference;

    .line 37
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/AutoBackupFragment;->addPreferencesFromResource(I)V

    .line 29
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 48
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupFragment;->mAutoBackup:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/miui/milk/ui/AutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/milk/common/AutoBackup;->setNextBackup(Landroid/content/Context;Z)V

    .line 58
    :goto_0
    return v0

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupFragment;->mAutoBackupTime:Landroid/preference/Preference;

    if-ne p2, v1, :cond_1

    .line 51
    invoke-direct {p0}, Lcom/miui/milk/ui/AutoBackupFragment;->showTimePicker()V

    goto :goto_0

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupFragment;->mAutoBackupChoose:Landroid/preference/Preference;

    if-ne p2, v1, :cond_2

    .line 53
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/milk/ui/AutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/miui/milk/ui/AutoBackupChooseActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/AutoBackupFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 56
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 42
    invoke-direct {p0}, Lcom/miui/milk/ui/AutoBackupFragment;->refreshUI()V

    .line 43
    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 2
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/miui/milk/ui/AutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/miui/milk/common/AutoBackup;->setAutoBackupHour(Landroid/content/Context;I)V

    .line 81
    invoke-virtual {p0}, Lcom/miui/milk/ui/AutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/miui/milk/common/AutoBackup;->setAutoBackupMinute(Landroid/content/Context;I)V

    .line 83
    invoke-direct {p0, p2, p3}, Lcom/miui/milk/ui/AutoBackupFragment;->updateTimeUI(II)V

    .line 84
    invoke-virtual {p0}, Lcom/miui/milk/ui/AutoBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/milk/common/AutoBackup;->setNextBackup(Landroid/content/Context;Z)V

    .line 85
    return-void
.end method
