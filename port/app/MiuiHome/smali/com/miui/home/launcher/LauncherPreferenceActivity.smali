.class public Lcom/miui/home/launcher/LauncherPreferenceActivity;
.super Lmiui/preference/BasePreferenceActivity;
.source "LauncherPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mIconShadow:Landroid/preference/Preference;

.field private mKeepInMemoryPref:Landroid/preference/CheckBoxPreference;

.field private mTransformationList:Landroid/preference/ListPreference;

.field private mWallpaperScrollList:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v3, 0x7f050001

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/LauncherPreferenceActivity;->addPreferencesFromResource(I)V

    .line 56
    const-string v3, "pref_key_keep_in_memory"

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mKeepInMemoryPref:Landroid/preference/CheckBoxPreference;

    .line 57
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mKeepInMemoryPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 58
    const-string v3, "pref_key_icon_shadow"

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mIconShadow:Landroid/preference/Preference;

    .line 59
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mIconShadow:Landroid/preference/Preference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 60
    const-string v3, "pref_key_transformation_type"

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mTransformationList:Landroid/preference/ListPreference;

    .line 62
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mTransformationList:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 64
    const-string v3, "pref_key_checkboxes"

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 65
    .local v0, boxes:Landroid/preference/PreferenceGroup;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 66
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "pref_key_transformation_type"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 67
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, defVal:Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pref_key_transformation_type"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mTransformationList:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 71
    .end local v1           #defVal:Ljava/lang/String;
    :cond_0
    sget-boolean v3, Lmiui/os/Build;->IS_LOW_MEMORY_DEVICE:Z

    if-nez v3, :cond_1

    .line 72
    const-string v3, "pref_key_enable_drawing_cache"

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 74
    :cond_1
    const-string v3, "pref_key_wallpaper_scroll_type"

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mWallpaperScrollList:Landroid/preference/ListPreference;

    .line 75
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mWallpaperScrollList:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 76
    const-string v3, "pref_key_wallpaper_scroll_type"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 77
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pref_key_wallpaper_scroll_type"

    const-string v5, "byTheme"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mWallpaperScrollList:Landroid/preference/ListPreference;

    const-string v4, "byTheme"

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 80
    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mKeepInMemoryPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "keep_launcher_in_memory"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    :cond_1
    :goto_0
    return v3

    .line 97
    .restart local p2
    :cond_2
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mIconShadow:Landroid/preference/Preference;

    if-ne p1, v4, :cond_3

    .line 98
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherPreferenceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherApplication;

    .line 99
    .local v0, app:Lcom/miui/home/launcher/LauncherApplication;
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v4

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/miui/home/launcher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    goto :goto_0

    .line 100
    .end local v0           #app:Lcom/miui/home/launcher/LauncherApplication;
    :cond_3
    instance-of v2, p1, Landroid/preference/ListPreference;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 101
    check-cast v1, Landroid/preference/ListPreference;

    .line 102
    .local v1, lp:Landroid/preference/ListPreference;
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 84
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onResume()V

    .line 85
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mKeepInMemoryPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "keep_launcher_in_memory"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mTransformationList:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mTransformationList:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mWallpaperScrollList:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mWallpaperScrollList:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
