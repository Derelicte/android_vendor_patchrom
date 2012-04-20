.class public Lcom/android/quicksearchbox/google/GoogleSuggestClient;
.super Lcom/android/quicksearchbox/google/AbstractGoogleSource;
.source "GoogleSuggestClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/google/GoogleSuggestClient$GoogleSuggestCursor;
    }
.end annotation


# static fields
.field private static final USER_AGENT:Ljava/lang/String;


# instance fields
.field private final mHttpClient:Lorg/apache/http/client/HttpClient;

.field private mSuggestUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->USER_AGENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;Lcom/android/quicksearchbox/Config;)V
    .locals 4
    .parameter "context"
    .parameter "uiThread"
    .parameter "iconLoader"
    .parameter "config"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quicksearchbox/google/AbstractGoogleSource;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V

    .line 69
    sget-object v1, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 70
    iget-object v1, p0, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 71
    .local v0, params:Lorg/apache/http/params/HttpParams;
    const-string v1, "http.conn-manager.timeout"

    invoke-virtual {p4}, Lcom/android/quicksearchbox/Config;->getHttpConnectTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setLongParameter(Ljava/lang/String;J)Lorg/apache/http/params/HttpParams;

    .line 75
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->mSuggestUri:Ljava/lang/String;

    .line 76
    return-void
.end method

.method private getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 3

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 156
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 157
    const/4 v1, 0x0

    .line 159
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    goto :goto_0
.end method

.method private isNetworkConnected()Z
    .locals 2

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 150
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private query(Ljava/lang/String;)Lcom/android/quicksearchbox/SourceResult;
    .locals 14
    .parameter "query"

    .prologue
    const/4 v9, 0x0

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-object v9

    .line 101
    :cond_1
    invoke-direct {p0}, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->isNetworkConnected()Z

    move-result v10

    if-nez v10, :cond_2

    .line 102
    const-string v10, "GoogleSearch"

    const-string v11, "Not connected to network."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :cond_2
    :try_start_0
    const-string v10, "UTF-8"

    invoke-static {p1, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 107
    iget-object v10, p0, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->mSuggestUri:Ljava/lang/String;

    if-nez v10, :cond_3

    .line 108
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 109
    .local v1, l:Ljava/util/Locale;
    invoke-static {v1}, Lcom/android/quicksearchbox/google/GoogleSearch;->getLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, language:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090006

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->mSuggestUri:Ljava/lang/String;

    .line 114
    .end local v1           #l:Ljava/util/Locale;
    .end local v2           #language:Ljava/lang/String;
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->mSuggestUri:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 116
    .local v7, suggestUri:Ljava/lang/String;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 117
    .local v3, method:Lorg/apache/http/client/methods/HttpGet;
    iget-object v10, p0, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v10, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 118
    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_0

    .line 125
    new-instance v6, Lorg/json/JSONArray;

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 126
    .local v6, results:Lorg/json/JSONArray;
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v8

    .line 127
    .local v8, suggestions:Lorg/json/JSONArray;
    const/4 v10, 0x2

    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    .line 129
    .local v4, popularity:Lorg/json/JSONArray;
    new-instance v10, Lcom/android/quicksearchbox/google/GoogleSuggestClient$GoogleSuggestCursor;

    invoke-direct {v10, p0, p1, v8, v4}, Lcom/android/quicksearchbox/google/GoogleSuggestClient$GoogleSuggestCursor;-><init>(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v9, v10

    goto :goto_0

    .line 133
    .end local v3           #method:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #popularity:Lorg/json/JSONArray;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #results:Lorg/json/JSONArray;
    .end local v7           #suggestUri:Ljava/lang/String;
    .end local v8           #suggestions:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v10, "GoogleSearch"

    const-string v11, "Error"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 135
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 136
    .local v0, e:Ljava/io/IOException;
    const-string v10, "GoogleSearch"

    const-string v11, "Error"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 137
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 138
    .local v0, e:Lorg/json/JSONException;
    const-string v10, "GoogleSearch"

    const-string v11, "Error"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public getIntentComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/quicksearchbox/google/GoogleSearch;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public queryExternal(Ljava/lang/String;)Lcom/android/quicksearchbox/SourceResult;
    .locals 1
    .parameter "query"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->query(Ljava/lang/String;)Lcom/android/quicksearchbox/SourceResult;

    move-result-object v0

    return-object v0
.end method

.method public queryInternal(Ljava/lang/String;)Lcom/android/quicksearchbox/SourceResult;
    .locals 1
    .parameter "query"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/google/GoogleSuggestClient;->query(Ljava/lang/String;)Lcom/android/quicksearchbox/SourceResult;

    move-result-object v0

    return-object v0
.end method

.method public refreshShortcut(Ljava/lang/String;Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 1
    .parameter "shortcutId"
    .parameter "oldExtraData"

    .prologue
    .line 145
    const/4 v0, 0x0

    return-object v0
.end method
