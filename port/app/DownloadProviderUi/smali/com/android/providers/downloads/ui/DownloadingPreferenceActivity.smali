.class public Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "DownloadingPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final ENABLE_MAX_BYTES_POPUP:Ljava/lang/String;

.field private final MAX_BYTES_LIST:Ljava/lang/String;

.field private mEnableMaxBytesPopupPref:Landroid/preference/CheckBoxPreference;

.field private mMaxBytesPref:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 41
    const-string v0, "pref_key_enable_max_bytes_popup"

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;->ENABLE_MAX_BYTES_POPUP:Ljava/lang/String;

    .line 42
    const-string v0, "pref_key_max_bytes"

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;->MAX_BYTES_LIST:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;->mEnableMaxBytesPopupPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private getMaxBytesPrefSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "newValue"

    .prologue
    .line 126
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;->mMaxBytesPref:Landroid/preference/ListPreference;

    invoke-virtual {v3, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 127
    .local v2, newIndex:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 128
    const/4 v2, 0x0

    .line 131
    :cond_0
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;->mMaxBytesPref:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 132
    .local v0, entries:[Ljava/lang/CharSequence;
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, newEntry:Ljava/lang/String;
    const v3, 0x7f09003e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private initPreference()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 69
    const-string v2, "pref_key_enable_max_bytes_popup"

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;->mEnableMaxBytesPopupPref:Landroid/preference/CheckBoxPreference;

    .line 70
    invoke-static {p0}, Landroid/app/MiuiDownloadManager;->getMobileFileSizePromptEnabled(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    .line 71
    .local v0, enabledVal:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 72
    invoke-static {p0, v3}, Landroid/app/MiuiDownloadManager;->setMobileFileSizePromptEnabled(Landroid/content/Context;Z)Z

    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 75
    :cond_0
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;->mEnableMaxBytesPopupPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 76
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;->mEnableMaxBytesPopupPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 78
    const-string v2, "pref_key_max_bytes"

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;->mMaxBytesPref:Landroid/preference/ListPreference;

    .line 79
    invoke-static {p0}, Landroid/app/DownloadManager;->getRecommendedMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, maxBytesValue:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;->mMaxBytesPref:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;->mMaxBytesPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 83
    :cond_1
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;->mMaxBytesPref:Landroid/preference/ListPreference;

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;->getMaxBytesPrefSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;->mMaxBytesPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 85
    return-void

    .line 75
    .end local v1           #maxBytesValue:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 54
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;->initPreference()V

    .line 55
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 59
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 64
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 61
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;->finish()V

    .line 62
    const/4 v0, 0x1

    goto :goto_0

    .line 59
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
    .line 89
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;->mEnableMaxBytesPopupPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_2

    move-object v0, p2

    .line 90
    check-cast v0, Ljava/lang/Boolean;

    .line 91
    .local v0, enabled:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {p0, v3}, Landroid/app/MiuiDownloadManager;->setMobileFileSizePromptEnabled(Landroid/content/Context;Z)Z

    .line 122
    .end local v0           #enabled:Ljava/lang/Boolean;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 94
    .restart local v0       #enabled:Ljava/lang/Boolean;
    :cond_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090041

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity$3;

    invoke-direct {v5, p0, v0}, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity$3;-><init>(Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;Ljava/lang/Boolean;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    new-instance v5, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity$2;

    invoke-direct {v5, p0, v0}, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity$2;-><init>(Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;Ljava/lang/Boolean;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity$1;

    invoke-direct {v4, p0, v0}, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity$1;-><init>(Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;Ljava/lang/Boolean;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 116
    .end local v0           #enabled:Ljava/lang/Boolean;
    :cond_2
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;->mMaxBytesPref:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    move-object v2, p2

    .line 117
    check-cast v2, Ljava/lang/String;

    .line 118
    .local v2, valueStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;->mMaxBytesPref:Landroid/preference/ListPreference;

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;->getMaxBytesPrefSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 119
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 120
    .local v1, maxBytes:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Landroid/app/MiuiDownloadManager;->setRecommendedMaxBytesOverMobile(Landroid/content/Context;J)Z

    goto :goto_0
.end method
