.class public Lcom/android/quicksearchbox/preferences/SearchableItemsController;
.super Ljava/lang/Object;
.source "SearchableItemsController.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/quicksearchbox/preferences/PreferenceController;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCorpora:Lcom/android/quicksearchbox/Corpora;

.field private mCorporaPreferences:Landroid/preference/PreferenceGroup;

.field private final mSearchSettings:Lcom/android/quicksearchbox/SearchSettings;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/SearchSettings;Lcom/android/quicksearchbox/Corpora;Landroid/content/Context;)V
    .locals 0
    .parameter "searchSettings"
    .parameter "corpora"
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchableItemsController;->mSearchSettings:Lcom/android/quicksearchbox/SearchSettings;

    .line 51
    iput-object p2, p0, Lcom/android/quicksearchbox/preferences/SearchableItemsController;->mCorpora:Lcom/android/quicksearchbox/Corpora;

    .line 52
    iput-object p3, p0, Lcom/android/quicksearchbox/preferences/SearchableItemsController;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private createCorpusPreference(Lcom/android/quicksearchbox/Corpus;)Landroid/preference/Preference;
    .locals 4
    .parameter "corpus"

    .prologue
    .line 103
    new-instance v2, Lcom/android/quicksearchbox/preferences/SearchableItemPreference;

    invoke-direct {p0}, Lcom/android/quicksearchbox/preferences/SearchableItemsController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/quicksearchbox/preferences/SearchableItemPreference;-><init>(Landroid/content/Context;)V

    .line 104
    .local v2, sourcePref:Lcom/android/quicksearchbox/preferences/SearchableItemPreference;
    invoke-static {p1}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getCorpusEnabledPreference(Lcom/android/quicksearchbox/Corpus;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/quicksearchbox/preferences/SearchableItemPreference;->setKey(Ljava/lang/String;)V

    .line 106
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->isWebCorpus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/quicksearchbox/preferences/SearchableItemPreference;->setOrder(I)V

    .line 109
    :cond_0
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->isCorpusDefaultEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/quicksearchbox/preferences/SearchableItemPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 110
    invoke-virtual {v2, p0}, Lcom/android/quicksearchbox/preferences/SearchableItemPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 112
    .local v1, label:Ljava/lang/CharSequence;
    invoke-virtual {v2, v1}, Lcom/android/quicksearchbox/preferences/SearchableItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->getSettingsDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 114
    .local v0, description:Ljava/lang/CharSequence;
    invoke-virtual {v2, v0}, Lcom/android/quicksearchbox/preferences/SearchableItemPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v2, v0}, Lcom/android/quicksearchbox/preferences/SearchableItemPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 116
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->getCorpusIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/quicksearchbox/preferences/SearchableItemPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 117
    return-object v2
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchableItemsController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getCorpora()Lcom/android/quicksearchbox/Corpora;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchableItemsController;->mCorpora:Lcom/android/quicksearchbox/Corpora;

    return-object v0
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/quicksearchbox/preferences/SearchableItemsController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method private getSettings()Lcom/android/quicksearchbox/SearchSettings;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchableItemsController;->mSearchSettings:Lcom/android/quicksearchbox/SearchSettings;

    return-object v0
.end method

.method private populateSourcePreference()V
    .locals 6

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/quicksearchbox/preferences/SearchableItemsController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 87
    .local v2, includeNonAllCorpora:Z
    iget-object v4, p0, Lcom/android/quicksearchbox/preferences/SearchableItemsController;->mCorporaPreferences:Landroid/preference/PreferenceGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 88
    invoke-direct {p0}, Lcom/android/quicksearchbox/preferences/SearchableItemsController;->getCorpora()Lcom/android/quicksearchbox/Corpora;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/quicksearchbox/Corpora;->getAllCorpora()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/Corpus;

    .line 89
    .local v0, corpus:Lcom/android/quicksearchbox/Corpus;
    if-nez v2, :cond_1

    invoke-interface {v0}, Lcom/android/quicksearchbox/Corpus;->includeInAll()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/quicksearchbox/preferences/SearchableItemsController;->createCorpusPreference(Lcom/android/quicksearchbox/Corpus;)Landroid/preference/Preference;

    move-result-object v3

    .line 91
    .local v3, pref:Landroid/preference/Preference;
    if-eqz v3, :cond_0

    .line 93
    iget-object v4, p0, Lcom/android/quicksearchbox/preferences/SearchableItemsController;->mCorporaPreferences:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 97
    .end local v0           #corpus:Lcom/android/quicksearchbox/Corpus;
    .end local v3           #pref:Landroid/preference/Preference;
    :cond_2
    return-void
.end method


# virtual methods
.method public handlePreference(Landroid/preference/Preference;)V
    .locals 0
    .parameter "corporaPreferences"

    .prologue
    .line 56
    check-cast p1, Landroid/preference/PreferenceGroup;

    .end local p1
    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchableItemsController;->mCorporaPreferences:Landroid/preference/PreferenceGroup;

    .line 57
    invoke-direct {p0}, Lcom/android/quicksearchbox/preferences/SearchableItemsController;->populateSourcePreference()V

    .line 58
    return-void
.end method

.method public onCreateComplete()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/quicksearchbox/preferences/SearchableItemsController;->getSettings()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/SearchSettings;->broadcastSettingsChanged()V

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method
