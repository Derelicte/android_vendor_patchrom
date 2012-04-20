.class public Lcom/android/quicksearchbox/SearchSettingsImpl;
.super Ljava/lang/Object;
.source "SearchSettingsImpl.java"

# interfaces
.implements Lcom/android/quicksearchbox/SearchSettings;


# instance fields
.field private final mConfig:Lcom/android/quicksearchbox/Config;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quicksearchbox/Config;)V
    .locals 0
    .parameter "context"
    .parameter "config"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchSettingsImpl;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/android/quicksearchbox/SearchSettingsImpl;->mConfig:Lcom/android/quicksearchbox/Config;

    .line 92
    return-void
.end method

.method public static getCorpusEnabledPreference(Lcom/android/quicksearchbox/Corpus;)Ljava/lang/String;
    .locals 2
    .parameter "corpus"

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable_corpus_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/quicksearchbox/Corpus;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addMenuItems(Landroid/view/Menu;Z)V
    .locals 3
    .parameter "menu"
    .parameter "showDisabled"

    .prologue
    .line 161
    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 162
    .local v0, inflater:Landroid/view/MenuInflater;
    const v2, 0x7f0e0001

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 163
    const v2, 0x7f0f002c

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 164
    .local v1, item:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getSearchSettingsIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 165
    return-void
.end method

.method public allowWebSearchShortcuts()Z
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method public broadcastSettingsChanged()V
    .locals 4

    .prologue
    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "QSB.SearchSettingsImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 158
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchSettingsImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getSearchBaseDomain()Ljava/lang/String;
    .locals 3

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "search_base_domain"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchBaseDomainApplyTime()J
    .locals 4

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "search_base_domain_apply_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSearchPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SearchSettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSearchSettingsIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.SEARCH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, settings:Landroid/content/Intent;
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    return-object v0
.end method

.method public getSearchableItemsIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.quicksearchbox.action.SEARCHABLE_ITEMS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    return-object v0
.end method

.method public isCorpusEnabled(Lcom/android/quicksearchbox/Corpus;)Z
    .locals 3
    .parameter "corpus"

    .prologue
    .line 121
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->isCorpusDefaultEnabled()Z

    move-result v0

    .line 122
    .local v0, defaultEnabled:Z
    invoke-static {p1}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getCorpusEnabledPreference(Lcom/android/quicksearchbox/Corpus;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, sourceEnabledPref:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public setSearchBaseDomain(Ljava/lang/String;)V
    .locals 4
    .parameter "searchBaseUrl"

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 253
    .local v0, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "search_base_domain"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 254
    const-string v1, "search_base_domain_apply_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 256
    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 257
    return-void
.end method

.method public shouldUseGoogleCom()Z
    .locals 3

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "use_google_com"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public upgradeSettingsIfNeeded()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method
