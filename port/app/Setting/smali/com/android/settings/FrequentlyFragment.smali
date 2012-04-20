.class public Lcom/android/settings/FrequentlyFragment;
.super Lcom/android/settings/BasePreferenceFragment;
.source "FrequentlyFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/settings/BasePreferenceFragment;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public buildHeaders()V
    .locals 9

    .prologue
    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v2, headers:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-virtual {p0}, Lcom/android/settings/FrequentlyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/settings/MiuiSettings;

    .line 31
    .local v7, miuiSettings:Lcom/android/settings/MiuiSettings;
    invoke-static {v7}, Lcom/android/settings/provider/MiuiSettingsUtil;->getShowKeys(Landroid/content/Context;)[I

    move-result-object v5

    .line 32
    .local v5, indexArr:[I
    invoke-static {v5}, Ljava/util/Arrays;->sort([I)V

    .line 33
    invoke-static {}, Lcom/android/settings/FrequentlySet;->getHeaderIds()[I

    move-result-object v1

    .line 34
    .local v1, headerIds:[I
    move-object v0, v5

    .local v0, arr$:[I
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_1

    aget v4, v0, v3

    .line 35
    .local v4, index:I
    if-ltz v4, :cond_0

    array-length v8, v1

    if-ge v4, v8, :cond_0

    .line 36
    aget v8, v1, v4

    invoke-virtual {v7, v8, v2}, Lcom/android/settings/MiuiSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 34
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 40
    .end local v4           #index:I
    :cond_1
    invoke-virtual {v7, v2}, Lcom/android/settings/MiuiSettings;->updateHeaderList(Ljava/util/List;)V

    .line 41
    iput-object v2, p0, Lcom/android/settings/FrequentlyFragment;->mHeaders:Ljava/util/List;

    .line 42
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/android/settings/BasePreferenceFragment;->onResume()V

    .line 21
    sget-boolean v0, Lcom/android/settings/provider/MiuiSettingsUtil;->sUpdateFrequent:Z

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/android/settings/FrequentlyFragment;->buildAdapter()V

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/provider/MiuiSettingsUtil;->sUpdateFrequent:Z

    .line 25
    :cond_0
    return-void
.end method
