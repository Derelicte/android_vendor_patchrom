.class public Lcom/android/quicksearchbox/preferences/SearchableItemsFragment;
.super Lcom/android/quicksearchbox/preferences/SettingsFragmentBase;
.source "SearchableItemsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/quicksearchbox/preferences/SettingsFragmentBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPreferencesResourceId()I
    .locals 1

    .prologue
    .line 29
    const v0, 0x7f060004

    return v0
.end method

.method protected handlePreferenceGroup(Landroid/preference/PreferenceGroup;)V
    .locals 1
    .parameter "screen"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/SearchableItemsFragment;->getController()Lcom/android/quicksearchbox/preferences/PreferenceController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/preferences/PreferenceController;->handlePreference(Landroid/preference/Preference;)V

    .line 35
    return-void
.end method
