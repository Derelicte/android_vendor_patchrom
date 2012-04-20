.class public Lcom/android/systemui/settings/NotificationIconFilterSettings;
.super Lmiui/preference/BasePreferenceActivity;
.source "NotificationIconFilterSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;
    }
.end annotation


# instance fields
.field private mAllApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mAppsLoaded:Z

.field private mEmptyListPreference:Landroid/preference/Preference;

.field private mFilterEnabledPreference:Landroid/preference/SwitchPreference;

.field private mFilterList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterListCategory:Landroid/preference/PreferenceCategory;

.field private mFilterModePreference:Landroid/preference/SwitchPreference;

.field private mIsBlacklistMode:Z

.field private mIsFilterEnabled:Z

.field private mOtherListCategory:Landroid/preference/PreferenceCategory;

.field private mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mResolver:Landroid/content/ContentResolver;

.field private mRoot:Landroid/preference/PreferenceScreen;

.field private mSettingLoaded:Z

.field private mSettingObserver:Landroid/database/ContentObserver;

.field private mSwitchesCategory:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mAllApps:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterList:Ljava/util/HashSet;

    .line 304
    new-instance v0, Lcom/android/systemui/settings/NotificationIconFilterSettings$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/NotificationIconFilterSettings$2;-><init>(Lcom/android/systemui/settings/NotificationIconFilterSettings;)V

    iput-object v0, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/settings/NotificationIconFilterSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mSettingLoaded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/NotificationIconFilterSettings;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/NotificationIconFilterSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mAppsLoaded:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/settings/NotificationIconFilterSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mAppsLoaded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/settings/NotificationIconFilterSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui/settings/NotificationIconFilterSettings;->updateFilterSettings()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/settings/NotificationIconFilterSettings;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mAllApps:Ljava/util/List;

    return-object v0
.end method

.method private loadPackages()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 312
    new-instance v0, Lcom/android/systemui/settings/NotificationIconFilterSettings$3;

    const v4, 0x7f0a00c5

    move-object v1, p0

    move-object v2, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/settings/NotificationIconFilterSettings$3;-><init>(Lcom/android/systemui/settings/NotificationIconFilterSettings;Landroid/content/Context;IIZ)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/NotificationIconFilterSettings$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 356
    return-void
.end method

.method private updateFilterSettings()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 136
    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/android/systemui/settings/NotificationFilterHelper;->isEnabled(Landroid/content/ContentResolver;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mIsFilterEnabled:Z

    .line 137
    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/android/systemui/settings/NotificationFilterHelper;->isBlacklistMode(Landroid/content/ContentResolver;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mIsBlacklistMode:Z

    .line 138
    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mResolver:Landroid/content/ContentResolver;

    iget-boolean v4, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mIsBlacklistMode:Z

    iget-object v5, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterList:Ljava/util/HashSet;

    invoke-static {v3, v4, v5}, Lcom/android/systemui/settings/NotificationFilterHelper;->getFilterList(Landroid/content/ContentResolver;ZLjava/util/HashSet;)V

    .line 140
    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterEnabledPreference:Landroid/preference/SwitchPreference;

    iget-boolean v4, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mIsFilterEnabled:Z

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 141
    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterModePreference:Landroid/preference/SwitchPreference;

    iget-boolean v4, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mIsBlacklistMode:Z

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 142
    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterListCategory:Landroid/preference/PreferenceCategory;

    iget-boolean v4, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mIsFilterEnabled:Z

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 143
    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mOtherListCategory:Landroid/preference/PreferenceCategory;

    iget-boolean v4, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mIsFilterEnabled:Z

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 145
    iget-boolean v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mIsFilterEnabled:Z

    if-eqz v3, :cond_1

    .line 146
    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterEnabledPreference:Landroid/preference/SwitchPreference;

    const v4, 0x7f0a00c8

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 147
    iget-object v4, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterListCategory:Landroid/preference/PreferenceCategory;

    iget-boolean v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mIsBlacklistMode:Z

    if-eqz v3, :cond_0

    const v3, 0x7f0a00cd

    :goto_0
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 155
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mRoot:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterListCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 156
    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mRoot:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mOtherListCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 157
    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterListCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 158
    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mOtherListCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 159
    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterListCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceCategory;->setOrderingAsAdded(Z)V

    .line 160
    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mOtherListCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceCategory;->setOrderingAsAdded(Z)V

    .line 162
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mAllApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 163
    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mAllApps:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;

    .line 165
    .local v2, preference:Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;
    invoke-virtual {v2}, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, pkg:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mIsBlacklistMode:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v1, v3}, Lcom/android/systemui/settings/NotificationFilterHelper;->isSystemApp(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 162
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 147
    .end local v0           #i:I
    .end local v1           #pkg:Ljava/lang/String;
    .end local v2           #preference:Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;
    :cond_0
    const v3, 0x7f0a00cc

    goto :goto_0

    .line 152
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterEnabledPreference:Landroid/preference/SwitchPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 171
    .restart local v0       #i:I
    .restart local v1       #pkg:Ljava/lang/String;
    .restart local v2       #preference:Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mIsFilterEnabled:Z

    if-nez v3, :cond_3

    .line 172
    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mOtherListCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 173
    invoke-virtual {v2, v7}, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;->setState(I)V

    goto :goto_3

    .line 175
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterList:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 176
    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterListCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 177
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;->setState(I)V

    goto :goto_3

    .line 180
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mOtherListCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 181
    invoke-virtual {v2, v6}, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;->setState(I)V

    goto :goto_3

    .line 185
    .end local v1           #pkg:Ljava/lang/String;
    .end local v2           #preference:Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterListCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceCategory;->setOrderingAsAdded(Z)V

    .line 186
    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mOtherListCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceCategory;->setOrderingAsAdded(Z)V

    .line 187
    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterListCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    if-nez v3, :cond_6

    .line 188
    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterListCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mEmptyListPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 190
    :cond_6
    iget-boolean v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mIsFilterEnabled:Z

    if-eqz v3, :cond_7

    .line 191
    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mRoot:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterListCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 193
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mRoot:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mOtherListCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 195
    iput-boolean v6, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mSettingLoaded:Z

    .line 196
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 126
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 127
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x7f030005

    .line 59
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/settings/NotificationIconFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mResolver:Landroid/content/ContentResolver;

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/settings/NotificationIconFilterSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 63
    const v1, 0x7f050004

    invoke-virtual {p0, v1}, Lcom/android/systemui/settings/NotificationIconFilterSettings;->addPreferencesFromResource(I)V

    .line 64
    const-string v1, "notification_icon_filter_settings"

    invoke-virtual {p0, v1}, Lcom/android/systemui/settings/NotificationIconFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mRoot:Landroid/preference/PreferenceScreen;

    .line 65
    iget-object v1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mRoot:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 67
    iget-object v1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mRoot:Landroid/preference/PreferenceScreen;

    const-string v2, "notification_icon_filter_switches"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mSwitchesCategory:Landroid/preference/PreferenceCategory;

    .line 69
    iget-object v1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mRoot:Landroid/preference/PreferenceScreen;

    const-string v2, "notification_icon_filter_enabled"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterEnabledPreference:Landroid/preference/SwitchPreference;

    .line 70
    iget-object v1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterEnabledPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setLayoutResource(I)V

    .line 71
    iget-object v1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterEnabledPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 73
    iget-object v1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mRoot:Landroid/preference/PreferenceScreen;

    const-string v2, "notification_icon_filter_mode"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterModePreference:Landroid/preference/SwitchPreference;

    .line 74
    iget-object v1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterModePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setLayoutResource(I)V

    .line 75
    iget-object v1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterModePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 76
    iget-object v1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mSwitchesCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterModePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 78
    iget-object v1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mRoot:Landroid/preference/PreferenceScreen;

    const-string v2, "notification_icon_filter_list"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterListCategory:Landroid/preference/PreferenceCategory;

    .line 79
    iget-object v1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mRoot:Landroid/preference/PreferenceScreen;

    const-string v2, "notification_icon_filter_list_empty"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mEmptyListPreference:Landroid/preference/Preference;

    .line 80
    iget-object v1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mEmptyListPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 82
    iget-object v1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mRoot:Landroid/preference/PreferenceScreen;

    const-string v2, "notification_icon_other_list"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mOtherListCategory:Landroid/preference/PreferenceCategory;

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/settings/NotificationIconFilterSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/NotificationIconFilterSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 132
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onDestroy()V

    .line 133
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 229
    iget-object v2, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterEnabledPreference:Landroid/preference/SwitchPreference;

    if-ne v2, p1, :cond_2

    .line 230
    iget-object v2, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mResolver:Landroid/content/ContentResolver;

    iget-boolean v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mIsFilterEnabled:Z

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v0}, Lcom/android/systemui/settings/NotificationFilterHelper;->setEnabled(Landroid/content/ContentResolver;Z)V

    .line 233
    invoke-direct {p0}, Lcom/android/systemui/settings/NotificationIconFilterSettings;->updateFilterSettings()V

    .line 239
    :cond_1
    :goto_0
    return v1

    .line 235
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterModePreference:Landroid/preference/SwitchPreference;

    if-ne v2, p1, :cond_1

    .line 236
    iget-object v2, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mResolver:Landroid/content/ContentResolver;

    iget-boolean v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mIsBlacklistMode:Z

    if-nez v3, :cond_3

    move v0, v1

    :cond_3
    invoke-static {v2, v0}, Lcom/android/systemui/settings/NotificationFilterHelper;->setMode(Landroid/content/ContentResolver;Z)V

    .line 237
    invoke-direct {p0}, Lcom/android/systemui/settings/NotificationIconFilterSettings;->updateFilterSettings()V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    .line 200
    iget-boolean v2, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mIsFilterEnabled:Z

    if-eqz v2, :cond_1

    instance-of v2, p2, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;

    if-eqz v2, :cond_1

    move-object v0, p2

    .line 201
    check-cast v0, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;

    .line 202
    .local v0, item:Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;
    invoke-virtual {v0}, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, packageName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterList:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 204
    iget-object v2, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterList:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 205
    invoke-virtual {v0, v5}, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;->setState(I)V

    .line 206
    iget-object v2, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterListCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, p2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 207
    iget-object v2, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterListCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterListCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mEmptyListPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mOtherListCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, p2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 222
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mResolver:Landroid/content/ContentResolver;

    iget-boolean v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mIsBlacklistMode:Z

    iget-object v4, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterList:Ljava/util/HashSet;

    invoke-static {v2, v3, v4}, Lcom/android/systemui/settings/NotificationFilterHelper;->setFilterList(Landroid/content/ContentResolver;ZLjava/util/HashSet;)V

    .line 224
    .end local v0           #item:Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;
    .end local v1           #packageName:Ljava/lang/String;
    :cond_1
    return v5

    .line 213
    .restart local v0       #item:Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;
    .restart local v1       #packageName:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterList:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 214
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;->setState(I)V

    .line 215
    iget-object v2, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterListCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mEmptyListPreference:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 216
    iget-object v2, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterListCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mEmptyListPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 218
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mFilterListCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, p2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 219
    iget-object v2, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mOtherListCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, p2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 95
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onWindowFocusChanged(Z)V

    .line 97
    if-eqz p1, :cond_3

    .line 98
    iget-object v0, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mSettingObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 102
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mSettingLoaded:Z

    if-nez v0, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/settings/NotificationIconFilterSettings;->updateFilterSettings()V

    .line 105
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mAppsLoaded:Z

    if-nez v0, :cond_2

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/settings/NotificationIconFilterSettings;->loadPackages()V

    .line 120
    :cond_2
    :goto_0
    return-void

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mSettingObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_4

    .line 111
    new-instance v0, Lcom/android/systemui/settings/NotificationIconFilterSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/settings/NotificationIconFilterSettings$1;-><init>(Lcom/android/systemui/settings/NotificationIconFilterSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mSettingObserver:Landroid/database/ContentObserver;

    .line 118
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings;->mSettingObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/android/systemui/settings/NotificationFilterHelper;->observeSettingChanged(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
