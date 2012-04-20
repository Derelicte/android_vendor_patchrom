.class public Lcom/android/browser/preferences/MiuiAdvancedPreferencesFragment;
.super Lcom/android/browser/preferences/AdvancedPreferencesFragment;
.source "MiuiAdvancedPreferencesFragment.java"


# instance fields
.field mChoices:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;-><init>()V

    return-void
.end method

.method private getUserAgentSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getUserAgent()I

    move-result v0

    .line 79
    .local v0, ua:I
    invoke-direct {p0, v0}, Lcom/android/browser/preferences/MiuiAdvancedPreferencesFragment;->getUserAgentSummary(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getUserAgentSummary(I)Ljava/lang/String;
    .locals 2
    .parameter "ua"

    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/android/browser/preferences/MiuiAdvancedPreferencesFragment;->mChoices:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 86
    :goto_0
    return-object v1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const-string v6, "advanced_settings"

    invoke-virtual {p0, v6}, Lcom/android/browser/preferences/MiuiAdvancedPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 27
    .local v0, advancedSettings:Landroid/preference/PreferenceScreen;
    const-string v6, "enable_night_read_mode"

    invoke-virtual {p0, v6}, Lcom/android/browser/preferences/MiuiAdvancedPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 28
    .local v2, e:Landroid/preference/Preference;
    sget-boolean v6, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v6, :cond_0

    .line 29
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 32
    :cond_0
    const-string v6, "default_text_encoding"

    invoke-virtual {p0, v6}, Lcom/android/browser/preferences/MiuiAdvancedPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 33
    check-cast v2, Landroid/preference/ListPreference;

    .end local v2           #e:Landroid/preference/Preference;
    invoke-virtual {p0, v2}, Lcom/android/browser/preferences/MiuiAdvancedPreferencesFragment;->updateListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 36
    const-string v6, "user_agent"

    invoke-virtual {p0, v6}, Lcom/android/browser/preferences/MiuiAdvancedPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 37
    .restart local v2       #e:Landroid/preference/Preference;
    invoke-direct {p0}, Lcom/android/browser/preferences/MiuiAdvancedPreferencesFragment;->getUserAgentSummary()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object v6, v2

    .line 39
    check-cast v6, Landroid/preference/ListPreference;

    invoke-virtual {p0, v6}, Lcom/android/browser/preferences/MiuiAdvancedPreferencesFragment;->updateListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/browser/preferences/MiuiAdvancedPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 42
    .local v5, res:Landroid/content/res/Resources;
    const v6, 0x7f08006b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/android/browser/preferences/MiuiAdvancedPreferencesFragment;->mChoices:[Ljava/lang/CharSequence;

    .line 46
    sget-boolean v6, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v6, :cond_3

    move-object v6, v2

    .line 48
    check-cast v6, Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 49
    .local v1, curArray:[Ljava/lang/CharSequence;
    array-length v6, v1

    add-int/lit8 v6, v6, 0x1

    new-array v4, v6, [Ljava/lang/CharSequence;

    .line 51
    .local v4, newArray:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v1

    if-ge v3, v6, :cond_1

    .line 52
    aget-object v6, v1, v3

    aput-object v6, v4, v3

    .line 51
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    :cond_1
    const v6, 0x7f0c0179

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v3

    move-object v6, v2

    .line 55
    check-cast v6, Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 56
    iput-object v4, p0, Lcom/android/browser/preferences/MiuiAdvancedPreferencesFragment;->mChoices:[Ljava/lang/CharSequence;

    move-object v6, v2

    .line 58
    check-cast v6, Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 59
    array-length v6, v1

    add-int/lit8 v6, v6, 0x1

    new-array v4, v6, [Ljava/lang/CharSequence;

    .line 60
    const/4 v3, 0x0

    :goto_1
    array-length v6, v1

    if-ge v3, v6, :cond_2

    .line 61
    aget-object v6, v1, v3

    aput-object v6, v4, v3

    .line 60
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 63
    :cond_2
    const v6, 0x7f0c017a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v3

    .line 64
    check-cast v2, Landroid/preference/ListPreference;

    .end local v2           #e:Landroid/preference/Preference;
    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 66
    .end local v1           #curArray:[Ljava/lang/CharSequence;
    .end local v3           #i:I
    .end local v4           #newArray:[Ljava/lang/CharSequence;
    :cond_3
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "pref"
    .parameter "objValue"

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user_agent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/browser/preferences/MiuiAdvancedPreferencesFragment;->getUserAgentSummary(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 72
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    .restart local p2
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/browser/preferences/AdvancedPreferencesFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
