.class public Lcom/android/settings/BasePreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BasePreferenceFragment.java"


# instance fields
.field protected mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 81
    new-instance v0, Lcom/android/settings/BasePreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/BasePreferenceFragment$1;-><init>(Lcom/android/settings/BasePreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/BasePreferenceFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/BasePreferenceFragment;Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/settings/BasePreferenceFragment;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    return-void
.end method

.method private onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 7
    .parameter "header"
    .parameter "position"

    .prologue
    .line 57
    iget-wide v3, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0801d0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-wide v3, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0801ce

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-wide v3, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0801d6

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-wide v3, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0801db

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/MiuiAirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 69
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/MiuiSettings;

    .line 70
    .local v2, miuiSettings:Lcom/android/settings/MiuiSettings;
    invoke-virtual {v2, p1, p2}, Lcom/android/settings/MiuiSettings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 72
    iget-wide v3, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v3, v3

    invoke-static {v3}, Lcom/android/settings/FrequentlySet;->getKeyIndex(I)I

    move-result v0

    .line 73
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 74
    invoke-static {v0}, Lcom/android/settings/FrequentlySet;->getKey(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 76
    invoke-static {v1, v1, v0}, Lcom/android/settings/provider/MiuiSettingsUtil;->addToCache(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method protected buildAdapter()V
    .locals 6

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->buildHeaders()V

    .line 28
    iget-object v2, p0, Lcom/android/settings/BasePreferenceFragment;->mHeaders:Ljava/util/List;

    if-nez v2, :cond_0

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/BasePreferenceFragment;->mHeaders:Ljava/util/List;

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 33
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    .line 34
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 35
    iget-object v3, p0, Lcom/android/settings/BasePreferenceFragment;->mHeaders:Ljava/util/List;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v1           #i:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;

    .line 41
    .local v0, adapter:Lcom/android/settings/MiuiSettings$HeaderAdapter;
    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->pause()V

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/android/settings/MiuiSettings$HeaderAdapter;

    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/BasePreferenceFragment;->mHeaders:Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lcom/android/settings/MiuiSettings$HeaderAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    return-void
.end method

.method public buildHeaders()V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v0, headers:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getHeadersResourceId()I

    move-result v2

    .line 93
    .local v2, resourceId:I
    if-lez v2, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/MiuiSettings;

    .line 95
    .local v1, miuiSettings:Lcom/android/settings/MiuiSettings;
    invoke-virtual {v1, v2, v0}, Lcom/android/settings/MiuiSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 97
    invoke-virtual {v1, v0}, Lcom/android/settings/MiuiSettings;->updateHeaderList(Ljava/util/List;)V

    .line 99
    .end local v1           #miuiSettings:Lcom/android/settings/MiuiSettings;
    :cond_0
    iput-object v0, p0, Lcom/android/settings/BasePreferenceFragment;->mHeaders:Ljava/util/List;

    .line 100
    return-void
.end method

.method protected getHeadersResourceId()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 129
    .local v1, listAdapter:Landroid/widget/ListAdapter;
    instance-of v2, v1, Lcom/android/settings/MiuiSettings$HeaderAdapter;

    if-eqz v2, :cond_0

    .line 130
    check-cast v1, Lcom/android/settings/MiuiSettings$HeaderAdapter;

    .end local v1           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v1}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getAirplaneModeEnabler()Lcom/android/settings/MiuiAirplaneModeEnabler;

    move-result-object v0

    .line 131
    .local v0, airplaneModeEnabler:Lcom/android/settings/MiuiAirplaneModeEnabler;
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/MiuiAirplaneModeEnabler;->onActivityResult(IILandroid/content/Intent;)V

    .line 135
    .end local v0           #airplaneModeEnabler:Lcom/android/settings/MiuiAirplaneModeEnabler;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 121
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 122
    check-cast v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->pause()V

    .line 124
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 111
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 112
    check-cast v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->resume()V

    .line 114
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->buildAdapter()V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/BasePreferenceFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 52
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 53
    return-void
.end method
