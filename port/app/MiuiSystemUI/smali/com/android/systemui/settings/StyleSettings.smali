.class public Lcom/android/systemui/settings/StyleSettings;
.super Lmiui/preference/BasePreferenceActivity;
.source "StyleSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mFullscreenExpandStyle:Landroid/preference/CheckBoxPreference;

.field private mKeyguardExpandStyle:Landroid/preference/CheckBoxPreference;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mStatusBarRestartReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/StyleSettings;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/settings/StyleSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v1, 0x7f050005

    invoke-virtual {p0, v1}, Lcom/android/systemui/settings/StyleSettings;->addPreferencesFromResource(I)V

    .line 34
    const-string v1, "toggle_style"

    invoke-virtual {p0, v1}, Lcom/android/systemui/settings/StyleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 36
    new-instance v1, Lcom/android/systemui/settings/StyleSettings$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/StyleSettings$1;-><init>(Lcom/android/systemui/settings/StyleSettings;)V

    iput-object v1, p0, Lcom/android/systemui/settings/StyleSettings;->mStatusBarRestartReceiver:Landroid/content/BroadcastReceiver;

    .line 43
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/settings/StyleSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 44
    iget-object v1, p0, Lcom/android/systemui/settings/StyleSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0a00b7

    invoke-virtual {p0, v2}, Lcom/android/systemui/settings/StyleSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v1, p0, Lcom/android/systemui/settings/StyleSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 47
    const-string v1, "expandable_under_keyguard"

    invoke-virtual {p0, v1}, Lcom/android/systemui/settings/StyleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/systemui/settings/StyleSettings;->mKeyguardExpandStyle:Landroid/preference/CheckBoxPreference;

    .line 48
    iget-object v1, p0, Lcom/android/systemui/settings/StyleSettings;->mKeyguardExpandStyle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 49
    iget-object v1, p0, Lcom/android/systemui/settings/StyleSettings;->mKeyguardExpandStyle:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lmiui/app/ExtraStatusBarManager;->isExpandableUnderKeyguard(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 51
    const-string v1, "expandable_under_fullscreen"

    invoke-virtual {p0, v1}, Lcom/android/systemui/settings/StyleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/systemui/settings/StyleSettings;->mFullscreenExpandStyle:Landroid/preference/CheckBoxPreference;

    .line 52
    iget-object v1, p0, Lcom/android/systemui/settings/StyleSettings;->mFullscreenExpandStyle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 53
    iget-object v1, p0, Lcom/android/systemui/settings/StyleSettings;->mFullscreenExpandStyle:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lmiui/app/ExtraStatusBarManager;->isExpandableUnderFullscreen(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.miui.app.ExtraStatusBarManager.LOADED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/android/systemui/settings/StyleSettings;->mStatusBarRestartReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/settings/StyleSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/settings/StyleSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 64
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onDestroy()V

    .line 65
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, key:Ljava/lang/String;
    const-string v1, "toggle_style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.app.ExtraStatusBarManager.REQUEST_RESTART"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/settings/StyleSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 73
    iget-object v1, p0, Lcom/android/systemui/settings/StyleSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 88
    .end local p2
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 75
    .restart local p2
    :cond_1
    const-string v1, "expandable_under_keyguard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    :try_start_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p0, v1}, Lmiui/app/ExtraStatusBarManager;->setExpandableUnderKeyguard(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    goto :goto_0

    .line 81
    .restart local p2
    :cond_2
    const-string v1, "expandable_under_fullscreen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    :try_start_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p0, v1}, Lmiui/app/ExtraStatusBarManager;->setExpandableUnderFullscreen(Landroid/content/Context;Z)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 84
    :catch_1
    move-exception v1

    goto :goto_0
.end method
