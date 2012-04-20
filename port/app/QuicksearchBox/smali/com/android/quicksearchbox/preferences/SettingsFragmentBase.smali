.class public abstract Lcom/android/quicksearchbox/preferences/SettingsFragmentBase;
.super Landroid/preference/PreferenceFragment;
.source "SettingsFragmentBase.java"


# instance fields
.field private mController:Lcom/android/quicksearchbox/preferences/PreferenceController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createController()Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/SettingsFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/quicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    .line 57
    .local v0, app:Lcom/android/quicksearchbox/QsbApplication;
    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/SettingsFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/QsbApplication;->createPreferenceControllerFactory(Landroid/app/Activity;)Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;

    move-result-object v1

    return-object v1
.end method

.method protected getController()Lcom/android/quicksearchbox/preferences/PreferenceController;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SettingsFragmentBase;->mController:Lcom/android/quicksearchbox/preferences/PreferenceController;

    return-object v0
.end method

.method protected getPreferencesName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "SearchSettings"

    return-object v0
.end method

.method protected abstract getPreferencesResourceId()I
.end method

.method protected handlePreferenceGroup(Landroid/preference/PreferenceGroup;)V
    .locals 4
    .parameter "group"

    .prologue
    .line 67
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 68
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 69
    .local v1, p:Landroid/preference/Preference;
    instance-of v2, v1, Landroid/preference/PreferenceCategory;

    if-eqz v2, :cond_0

    .line 70
    check-cast v1, Landroid/preference/PreferenceCategory;

    .end local v1           #p:Landroid/preference/Preference;
    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/preferences/SettingsFragmentBase;->handlePreferenceGroup(Landroid/preference/PreferenceGroup;)V

    .line 67
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    .restart local v1       #p:Landroid/preference/Preference;
    :cond_0
    iget-object v2, p0, Lcom/android/quicksearchbox/preferences/SettingsFragmentBase;->mController:Lcom/android/quicksearchbox/preferences/PreferenceController;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/quicksearchbox/preferences/PreferenceController;->handlePreference(Landroid/preference/Preference;)V

    goto :goto_1

    .line 75
    .end local v1           #p:Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/SettingsFragmentBase;->createController()Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/preferences/SettingsFragmentBase;->mController:Lcom/android/quicksearchbox/preferences/PreferenceController;

    .line 42
    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/SettingsFragmentBase;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/SettingsFragmentBase;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/SettingsFragmentBase;->getPreferencesResourceId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/preferences/SettingsFragmentBase;->addPreferencesFromResource(I)V

    .line 46
    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/SettingsFragmentBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/preferences/SettingsFragmentBase;->handlePreferenceGroup(Landroid/preference/PreferenceGroup;)V

    .line 48
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SettingsFragmentBase;->mController:Lcom/android/quicksearchbox/preferences/PreferenceController;

    invoke-interface {v0}, Lcom/android/quicksearchbox/preferences/PreferenceController;->onCreateComplete()V

    .line 49
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SettingsFragmentBase;->mController:Lcom/android/quicksearchbox/preferences/PreferenceController;

    invoke-interface {v0}, Lcom/android/quicksearchbox/preferences/PreferenceController;->onDestroy()V

    .line 92
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 93
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 80
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SettingsFragmentBase;->mController:Lcom/android/quicksearchbox/preferences/PreferenceController;

    invoke-interface {v0}, Lcom/android/quicksearchbox/preferences/PreferenceController;->onResume()V

    .line 81
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SettingsFragmentBase;->mController:Lcom/android/quicksearchbox/preferences/PreferenceController;

    invoke-interface {v0}, Lcom/android/quicksearchbox/preferences/PreferenceController;->onStop()V

    .line 86
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 87
    return-void
.end method
