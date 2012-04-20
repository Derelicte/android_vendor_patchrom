.class public Lcom/android/quicksearchbox/preferences/SearchableItemsActivity;
.super Lcom/android/quicksearchbox/preferences/LegacySearchSettingsActivityBase;
.source "SearchableItemsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/quicksearchbox/preferences/LegacySearchSettingsActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPreferencesResourceId()I
    .locals 1

    .prologue
    .line 30
    const v0, 0x7f060004

    return v0
.end method

.method protected handlePreferenceGroup(Landroid/preference/PreferenceGroup;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/SearchableItemsActivity;->getController()Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;->handlePreference(Landroid/preference/Preference;)V

    .line 36
    return-void
.end method
