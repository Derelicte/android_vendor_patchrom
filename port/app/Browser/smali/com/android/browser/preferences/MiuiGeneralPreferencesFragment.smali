.class public Lcom/android/browser/preferences/MiuiGeneralPreferencesFragment;
.super Lcom/android/browser/preferences/GeneralPreferencesFragment;
.source "MiuiGeneralPreferencesFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;-><init>()V

    return-void
.end method


# virtual methods
.method getHomepageValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    const-string v0, "content://com.android.browser.home/res/raw/miui_home"

    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "miui_home"

    .line 52
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getHomepageValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "pref"
    .parameter "objValue"

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0}, Lcom/android/browser/preferences/MiuiGeneralPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 19
    const-string v2, "PageContentPreferencesFragment"

    const-string v3, "onPreferenceChange called from detached fragment!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .end local p1
    :goto_0
    return v1

    .line 23
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "homepage_picker"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 24
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    .line 25
    .local v0, settings:Lcom/android/browser/BrowserSettings;
    const-string v2, "miui_home"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 26
    iget-object v2, p0, Lcom/android/browser/preferences/MiuiGeneralPreferencesFragment;->mCurrentPage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/browser/BrowserSettings;->setHomePage(Ljava/lang/String;)V

    .line 39
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/browser/preferences/MiuiGeneralPreferencesFragment;->getHomepageSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 40
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p0}, Lcom/android/browser/preferences/MiuiGeneralPreferencesFragment;->getHomepageValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 27
    .restart local p1
    :cond_2
    const-string v2, "current"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 28
    iget-object v2, p0, Lcom/android/browser/preferences/MiuiGeneralPreferencesFragment;->mCurrentPage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/browser/BrowserSettings;->setHomePage(Ljava/lang/String;)V

    goto :goto_1

    .line 29
    :cond_3
    const-string v2, "blank"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 30
    const-string v2, "about:blank"

    invoke-virtual {v0, v2}, Lcom/android/browser/BrowserSettings;->setHomePage(Ljava/lang/String;)V

    goto :goto_1

    .line 31
    :cond_4
    const-string v2, "default"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 32
    invoke-virtual {p0}, Lcom/android/browser/preferences/MiuiGeneralPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/browser/BrowserSettings;->getFactoryResetHomeUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/browser/BrowserSettings;->setHomePage(Ljava/lang/String;)V

    goto :goto_1

    .line 33
    :cond_5
    const-string v2, "most_visited"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 34
    const-string v2, "content://com.android.browser.home/"

    invoke-virtual {v0, v2}, Lcom/android/browser/BrowserSettings;->setHomePage(Ljava/lang/String;)V

    goto :goto_1

    .line 35
    :cond_6
    const-string v2, "other"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/preferences/MiuiGeneralPreferencesFragment;->promptForHomepage(Landroid/preference/ListPreference;)V

    goto :goto_0

    .line 44
    .end local v0           #settings:Lcom/android/browser/BrowserSettings;
    .restart local p1
    :cond_7
    const/4 v1, 0x1

    goto :goto_0
.end method
