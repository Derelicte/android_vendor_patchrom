.class public Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;
.super Ljava/lang/Object;
.source "SearchBaseUrlHelper.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHttpHelper:Lcom/android/quicksearchbox/util/HttpHelper;

.field private final mSearchSettings:Lcom/android/quicksearchbox/SearchSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quicksearchbox/util/HttpHelper;Lcom/android/quicksearchbox/SearchSettings;Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "context"
    .parameter "helper"
    .parameter "searchSettings"
    .parameter "prefs"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;->mHttpHelper:Lcom/android/quicksearchbox/util/HttpHelper;

    .line 55
    iput-object p1, p0, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;->mContext:Landroid/content/Context;

    .line 56
    iput-object p3, p0, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;->mSearchSettings:Lcom/android/quicksearchbox/SearchSettings;

    .line 61
    invoke-interface {p4, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;->maybeUpdateBaseUrlSetting(Z)V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;)Lcom/android/quicksearchbox/util/HttpHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;->mHttpHelper:Lcom/android/quicksearchbox/util/HttpHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;->getDefaultBaseDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;->setSearchBaseDomain(Ljava/lang/String;)V

    return-void
.end method

.method private checkSearchDomain()V
    .locals 3

    .prologue
    .line 132
    new-instance v0, Lcom/android/quicksearchbox/util/HttpHelper$GetRequest;

    const-string v1, "https://www.google.com/searchdomaincheck?format=domain"

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/util/HttpHelper$GetRequest;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, request:Lcom/android/quicksearchbox/util/HttpHelper$GetRequest;
    new-instance v1, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper$1;

    invoke-direct {v1, p0, v0}, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper$1;-><init>(Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;Lcom/android/quicksearchbox/util/HttpHelper$GetRequest;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 156
    return-void
.end method

.method private getDefaultBaseDomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setSearchBaseDomain(Ljava/lang/String;)V
    .locals 1
    .parameter "domain"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;->mSearchSettings:Lcom/android/quicksearchbox/SearchSettings;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/SearchSettings;->setSearchBaseDomain(Ljava/lang/String;)V

    .line 166
    return-void
.end method


# virtual methods
.method public getSearchBaseUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090004

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;->getSearchDomain()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Lcom/android/quicksearchbox/google/GoogleSearch;->getLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchDomain()Ljava/lang/String;
    .locals 3

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;->mSearchSettings:Lcom/android/quicksearchbox/SearchSettings;

    invoke-interface {v1}, Lcom/android/quicksearchbox/SearchSettings;->getSearchBaseDomain()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, domain:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;->getDefaultBaseDomain()Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_0
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "www"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_1
    return-object v0
.end method

.method public maybeUpdateBaseUrlSetting(Z)V
    .locals 8
    .parameter "force"

    .prologue
    .line 76
    iget-object v4, p0, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;->mSearchSettings:Lcom/android/quicksearchbox/SearchSettings;

    invoke-interface {v4}, Lcom/android/quicksearchbox/SearchSettings;->getSearchBaseDomainApplyTime()J

    move-result-wide v2

    .line 77
    .local v2, lastUpdateTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 79
    .local v0, currentTime:J
    if-nez p1, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    sub-long v4, v0, v2

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 81
    :cond_0
    iget-object v4, p0, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;->mSearchSettings:Lcom/android/quicksearchbox/SearchSettings;

    invoke-interface {v4}, Lcom/android/quicksearchbox/SearchSettings;->shouldUseGoogleCom()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 82
    invoke-direct {p0}, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;->getDefaultBaseDomain()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;->setSearchBaseDomain(Ljava/lang/String;)V

    .line 87
    :cond_1
    :goto_0
    return-void

    .line 84
    :cond_2
    invoke-direct {p0}, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;->checkSearchDomain()V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "pref"
    .parameter "key"

    .prologue
    .line 172
    const-string v0, "use_google_com"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;->maybeUpdateBaseUrlSetting(Z)V

    .line 175
    :cond_0
    return-void
.end method
