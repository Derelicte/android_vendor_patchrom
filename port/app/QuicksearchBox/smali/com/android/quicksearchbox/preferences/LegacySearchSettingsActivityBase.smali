.class public abstract Lcom/android/quicksearchbox/preferences/LegacySearchSettingsActivityBase;
.super Landroid/preference/PreferenceActivity;
.source "LegacySearchSettingsActivityBase.java"


# instance fields
.field private mController:Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createController()Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;
    .locals 2

    .prologue
    .line 58
    invoke-static {p0}, Lcom/android/quicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    .line 59
    .local v0, app:Lcom/android/quicksearchbox/QsbApplication;
    invoke-virtual {v0, p0}, Lcom/android/quicksearchbox/QsbApplication;->createPreferenceControllerFactory(Landroid/app/Activity;)Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;

    move-result-object v1

    return-object v1
.end method

.method protected getController()Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/LegacySearchSettingsActivityBase;->mController:Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;

    return-object v0
.end method

.method protected getPreferencesName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "SearchSettings"

    return-object v0
.end method

.method protected abstract getPreferencesResourceId()I
.end method

.method protected handlePreferenceGroup(Landroid/preference/PreferenceGroup;)V
    .locals 4
    .parameter "group"

    .prologue
    .line 69
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 70
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 71
    .local v1, p:Landroid/preference/Preference;
    instance-of v2, v1, Landroid/preference/PreferenceCategory;

    if-eqz v2, :cond_0

    .line 72
    check-cast v1, Landroid/preference/PreferenceCategory;

    .end local v1           #p:Landroid/preference/Preference;
    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/preferences/LegacySearchSettingsActivityBase;->handlePreferenceGroup(Landroid/preference/PreferenceGroup;)V

    .line 69
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    .restart local v1       #p:Landroid/preference/Preference;
    :cond_0
    iget-object v2, p0, Lcom/android/quicksearchbox/preferences/LegacySearchSettingsActivityBase;->mController:Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;->handlePreference(Landroid/preference/Preference;)V

    goto :goto_1

    .line 77
    .end local v1           #p:Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/LegacySearchSettingsActivityBase;->createController()Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/preferences/LegacySearchSettingsActivityBase;->mController:Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;

    .line 43
    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/LegacySearchSettingsActivityBase;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/LegacySearchSettingsActivityBase;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/LegacySearchSettingsActivityBase;->getPreferencesResourceId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/preferences/LegacySearchSettingsActivityBase;->addPreferencesFromResource(I)V

    .line 47
    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/LegacySearchSettingsActivityBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/preferences/LegacySearchSettingsActivityBase;->handlePreferenceGroup(Landroid/preference/PreferenceGroup;)V

    .line 49
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/LegacySearchSettingsActivityBase;->mController:Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;->onCreateComplete()V

    .line 51
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/LegacySearchSettingsActivityBase;->mController:Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;->onDestroy()V

    .line 94
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 95
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 82
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/LegacySearchSettingsActivityBase;->mController:Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;->onResume()V

    .line 83
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/LegacySearchSettingsActivityBase;->mController:Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;->onStop()V

    .line 88
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 89
    return-void
.end method
