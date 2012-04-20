.class public Lcom/android/quicksearchbox/google/GoogleSearch;
.super Landroid/app/Activity;
.source "GoogleSearch.java"


# instance fields
.field private mSearchDomainHelper:Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createLaunchUriIntentFromSearchIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 113
    const-string v8, "query"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, query:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 115
    const-string v8, "GoogleSearch"

    const-string v9, "Got search intent with no query."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v7

    .line 145
    :goto_0
    return-object v3

    .line 120
    :cond_0
    const-string v8, "app_data"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 121
    .local v0, appSearchData:Landroid/os/Bundle;
    const-string v6, "unknown"

    .line 122
    .local v6, source:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 123
    const-string v8, "source"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 130
    :cond_1
    const-string v8, "com.android.browser.application_id"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, applicationId:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 132
    invoke-virtual {p0}, Lcom/android/quicksearchbox/google/GoogleSearch;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 136
    :cond_2
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/quicksearchbox/google/GoogleSearch;->mSearchDomainHelper:Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;

    invoke-virtual {v9}, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;->getSearchBaseUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&source=android-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&q="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v4, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, searchUri:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 140
    .local v3, launchUriIntent:Landroid/content/Intent;
    const-string v8, "com.android.browser.application_id"

    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const/high16 v8, 0x1000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    .end local v3           #launchUriIntent:Landroid/content/Intent;
    .end local v5           #searchUri:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 144
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    const-string v8, "GoogleSearch"

    const-string v9, "Error"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v7

    .line 145
    goto :goto_0
.end method

.method public static getLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .parameter "locale"

    .prologue
    .line 76
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, language:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, hl:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, country:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2, v0}, Lcom/android/quicksearchbox/google/GoogleSearch;->useLangCountryHl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private handleWebSearchIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/google/GoogleSearch;->createLaunchUriIntentFromSearchIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 105
    .local v0, launchUriIntent:Landroid/content/Intent;
    const-string v2, "web_search_pendingintent"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 107
    .local v1, pending:Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    invoke-direct {p0, v1, v0}, Lcom/android/quicksearchbox/google/GoogleSearch;->launchPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 108
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/quicksearchbox/google/GoogleSearch;->launchIntent(Landroid/content/Intent;)V

    .line 110
    :cond_1
    return-void
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 152
    :try_start_0
    const-string v1, "GoogleSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/google/GoogleSearch;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v1, "GoogleSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found to handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private launchPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 4
    .parameter "pending"
    .parameter "fillIn"

    .prologue
    .line 161
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1, p0, v1, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    const/4 v1, 0x1

    .line 165
    :goto_0
    return v1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v1, "GoogleSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending intent cancelled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static useLangCountryHl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "language"
    .parameter "country"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 92
    const-string v2, "en"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    const-string v0, "GB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    const-string v2, "zh"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 95
    const-string v2, "CN"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "TW"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 96
    :cond_3
    const-string v2, "pt"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    const-string v2, "BR"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "PT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/quicksearchbox/google/GoogleSearch;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 59
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, action:Ljava/lang/String;
    :goto_0
    invoke-static {p0}, Lcom/android/quicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quicksearchbox/QsbApplication;->getSearchBaseUrlHelper()Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/quicksearchbox/google/GoogleSearch;->mSearchDomainHelper:Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;

    .line 65
    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/quicksearchbox/google/GoogleSearch;->handleWebSearchIntent(Landroid/content/Intent;)V

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/google/GoogleSearch;->finish()V

    .line 70
    return-void

    .line 59
    .end local v0           #action:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
