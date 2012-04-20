.class public Lcom/miui/notes/gtask/remote/GTaskClient;
.super Ljava/lang/Object;
.source "GTaskClient.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/miui/notes/gtask/remote/GTaskClient;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mActionId:I

.field private mClientVersion:J

.field private mGetUrl:Ljava/lang/String;

.field private mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private mLastLoginTime:J

.field private mLoggedin:Z

.field private mPostUrl:Ljava/lang/String;

.field private mUpdateArray:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/miui/notes/gtask/remote/GTaskClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/notes/gtask/remote/GTaskClient;->TAG:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/notes/gtask/remote/GTaskClient;->mInstance:Lcom/miui/notes/gtask/remote/GTaskClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object v2, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 79
    const-string v0, "https://mail.google.com/tasks/ig"

    iput-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mGetUrl:Ljava/lang/String;

    .line 80
    const-string v0, "https://mail.google.com/tasks/r/ig"

    iput-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mPostUrl:Ljava/lang/String;

    .line 81
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mClientVersion:J

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mLoggedin:Z

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mLastLoginTime:J

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mActionId:I

    .line 85
    iput-object v2, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mAccount:Landroid/accounts/Account;

    .line 86
    iput-object v2, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mUpdateArray:Lorg/json/JSONArray;

    .line 87
    return-void
.end method

.method private createHttpPost()Lorg/apache/http/client/methods/HttpPost;
    .locals 3

    .prologue
    .line 272
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mPostUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, httpPost:Lorg/apache/http/client/methods/HttpPost;
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded;charset=utf-8"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v1, "AT"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-object v0
.end method

.method private getActionId()I
    .locals 2

    .prologue
    .line 268
    iget v0, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mActionId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mActionId:I

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/miui/notes/gtask/remote/GTaskClient;
    .locals 2

    .prologue
    .line 90
    const-class v1, Lcom/miui/notes/gtask/remote/GTaskClient;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/notes/gtask/remote/GTaskClient;->mInstance:Lcom/miui/notes/gtask/remote/GTaskClient;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/miui/notes/gtask/remote/GTaskClient;

    invoke-direct {v0}, Lcom/miui/notes/gtask/remote/GTaskClient;-><init>()V

    sput-object v0, Lcom/miui/notes/gtask/remote/GTaskClient;->mInstance:Lcom/miui/notes/gtask/remote/GTaskClient;

    .line 93
    :cond_0
    sget-object v0, Lcom/miui/notes/gtask/remote/GTaskClient;->mInstance:Lcom/miui/notes/gtask/remote/GTaskClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getResponseContent(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 10
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    const/4 v2, 0x0

    .line 280
    .local v2, contentEncoding:Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 281
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 282
    sget-object v7, Lcom/miui/notes/gtask/remote/GTaskClient;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "encoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 286
    .local v4, input:Ljava/io/InputStream;
    if-eqz v2, :cond_2

    const-string v7, "gzip"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 287
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    .end local v4           #input:Ljava/io/InputStream;
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 294
    .restart local v4       #input:Ljava/io/InputStream;
    :cond_1
    :goto_0
    :try_start_0
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 295
    .local v5, isr:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 296
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .local v6, sb:Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, buff:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 301
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 306
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    return-object v7

    .line 288
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #buff:Ljava/lang/String;
    .end local v5           #isr:Ljava/io/InputStreamReader;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :cond_2
    if-eqz v2, :cond_1

    const-string v7, "deflate"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 289
    new-instance v3, Ljava/util/zip/Inflater;

    const/4 v7, 0x1

    invoke-direct {v3, v7}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 290
    .local v3, inflater:Ljava/util/zip/Inflater;
    new-instance v4, Ljava/util/zip/InflaterInputStream;

    .end local v4           #input:Ljava/io/InputStream;
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v4, v7, v3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .restart local v4       #input:Ljava/io/InputStream;
    goto :goto_0

    .line 303
    .end local v3           #inflater:Ljava/util/zip/Inflater;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #buff:Ljava/lang/String;
    .restart local v5       #isr:Ljava/io/InputStreamReader;
    .restart local v6       #sb:Ljava/lang/StringBuilder;
    :cond_3
    :try_start_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 304
    goto :goto_1

    .line 306
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #buff:Ljava/lang/String;
    .end local v5           #isr:Ljava/io/InputStreamReader;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v7

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v7
.end method

.method private loginGoogleAccount(Landroid/app/Activity;Z)Ljava/lang/String;
    .locals 19
    .parameter "activity"
    .parameter "invalidateToken"

    .prologue
    .line 153
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 154
    .local v2, accountManager:Landroid/accounts/AccountManager;
    const-string v4, "com.google"

    invoke-virtual {v2, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v12

    .line 156
    .local v12, accounts:[Landroid/accounts/Account;
    array-length v4, v12

    if-nez v4, :cond_1

    .line 157
    sget-object v4, Lcom/miui/notes/gtask/remote/GTaskClient;->TAG:Ljava/lang/String;

    const-string v5, "there is no available google account"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v14, 0x0

    .line 191
    :cond_0
    :goto_0
    return-object v14

    .line 161
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getSyncAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 162
    .local v11, accountName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 163
    .local v3, account:Landroid/accounts/Account;
    move-object v13, v12

    .local v13, arr$:[Landroid/accounts/Account;
    array-length v0, v13

    move/from16 v18, v0

    .local v18, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    aget-object v9, v13, v17

    .line 164
    .local v9, a:Landroid/accounts/Account;
    iget-object v4, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 165
    move-object v3, v9

    .line 169
    .end local v9           #a:Landroid/accounts/Account;
    :cond_2
    if-eqz v3, :cond_4

    .line 170
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/miui/notes/gtask/remote/GTaskClient;->mAccount:Landroid/accounts/Account;

    .line 177
    const-string v4, "goanna_mobile"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v2 .. v8}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v10

    .line 180
    .local v10, accountManagerFuture:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {v10}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/Bundle;

    .line 181
    .local v15, authTokenBundle:Landroid/os/Bundle;
    const-string v4, "authtoken"

    invoke-virtual {v15, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 182
    .local v14, authToken:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 183
    const-string v4, "com.google"

    invoke-virtual {v2, v4, v14}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/miui/notes/gtask/remote/GTaskClient;->loginGoogleAccount(Landroid/app/Activity;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    .end local v14           #authToken:Ljava/lang/String;
    .end local v15           #authTokenBundle:Landroid/os/Bundle;
    :catch_0
    move-exception v16

    .line 187
    .local v16, e:Ljava/lang/Exception;
    sget-object v4, Lcom/miui/notes/gtask/remote/GTaskClient;->TAG:Ljava/lang/String;

    const-string v5, "get auth token failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v14, 0x0

    .restart local v14       #authToken:Ljava/lang/String;
    goto :goto_0

    .line 163
    .end local v10           #accountManagerFuture:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    .end local v14           #authToken:Ljava/lang/String;
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v9       #a:Landroid/accounts/Account;
    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 172
    .end local v9           #a:Landroid/accounts/Account;
    :cond_4
    sget-object v4, Lcom/miui/notes/gtask/remote/GTaskClient;->TAG:Ljava/lang/String;

    const-string v5, "unable to get an account with the same name in the settings"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v14, 0x0

    goto :goto_0
.end method

.method private loginGtask(Ljava/lang/String;)Z
    .locals 24
    .parameter "authToken"

    .prologue
    .line 213
    const/16 v20, 0x2710

    .line 214
    .local v20, timeoutConnection:I
    const/16 v21, 0x3a98

    .line 215
    .local v21, timeoutSocket:I
    new-instance v10, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v10}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 216
    .local v10, httpParameters:Lorg/apache/http/params/HttpParams;
    move/from16 v0, v20

    invoke-static {v10, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 217
    move/from16 v0, v21

    invoke-static {v10, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 218
    new-instance v22, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v0, v22

    invoke-direct {v0, v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/notes/gtask/remote/GTaskClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 219
    new-instance v16, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct/range {v16 .. v16}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 220
    .local v16, localBasicCookieStore:Lorg/apache/http/impl/client/BasicCookieStore;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/gtask/remote/GTaskClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/gtask/remote/GTaskClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 225
    :try_start_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/gtask/remote/GTaskClient;->mGetUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "?auth="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 226
    .local v17, loginUrl:Ljava/lang/String;
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 227
    .local v9, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const/16 v19, 0x0

    .line 228
    .local v19, response:Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/gtask/remote/GTaskClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v19

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/gtask/remote/GTaskClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v5

    .line 232
    .local v5, cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    const/4 v8, 0x0

    .line 233
    .local v8, hasAuthCookie:Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/cookie/Cookie;

    .line 234
    .local v4, cookie:Lorg/apache/http/cookie/Cookie;
    invoke-interface {v4}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "GTL"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 235
    const/4 v8, 0x1

    goto :goto_0

    .line 238
    .end local v4           #cookie:Lorg/apache/http/cookie/Cookie;
    :cond_1
    if-nez v8, :cond_2

    .line 239
    sget-object v22, Lcom/miui/notes/gtask/remote/GTaskClient;->TAG:Ljava/lang/String;

    const-string v23, "it seems that there is no auth cookie"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_2
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/miui/notes/gtask/remote/GTaskClient;->getResponseContent(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v18

    .line 244
    .local v18, resString:Ljava/lang/String;
    const-string v13, "_setup("

    .line 245
    .local v13, jsBegin:Ljava/lang/String;
    const-string v14, ")}</script>"

    .line 246
    .local v14, jsEnd:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 247
    .local v3, begin:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 248
    .local v7, end:I
    const/4 v15, 0x0

    .line 249
    .local v15, jsString:Ljava/lang/String;
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v3, v0, :cond_3

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v7, v0, :cond_3

    if-ge v3, v7, :cond_3

    .line 250
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v22

    add-int v22, v22, v3

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 252
    :cond_3
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 253
    .local v12, js:Lorg/json/JSONObject;
    const-string v22, "v"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/miui/notes/gtask/remote/GTaskClient;->mClientVersion:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 264
    const/16 v22, 0x1

    .end local v3           #begin:I
    .end local v5           #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v7           #end:I
    .end local v8           #hasAuthCookie:Z
    .end local v9           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #js:Lorg/json/JSONObject;
    .end local v13           #jsBegin:Ljava/lang/String;
    .end local v14           #jsEnd:Ljava/lang/String;
    .end local v15           #jsString:Ljava/lang/String;
    .end local v17           #loginUrl:Ljava/lang/String;
    .end local v18           #resString:Ljava/lang/String;
    .end local v19           #response:Lorg/apache/http/HttpResponse;
    :goto_1
    return v22

    .line 254
    :catch_0
    move-exception v6

    .line 255
    .local v6, e:Lorg/json/JSONException;
    sget-object v22, Lcom/miui/notes/gtask/remote/GTaskClient;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 257
    const/16 v22, 0x0

    goto :goto_1

    .line 258
    .end local v6           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v6

    .line 260
    .local v6, e:Ljava/lang/Exception;
    sget-object v22, Lcom/miui/notes/gtask/remote/GTaskClient;->TAG:Ljava/lang/String;

    const-string v23, "httpget gtask_url failed"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/16 v22, 0x0

    goto :goto_1
.end method

.method private postRequest(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 9
    .parameter "js"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/notes/gtask/exception/NetworkFailureException;
        }
    .end annotation

    .prologue
    .line 311
    iget-boolean v6, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mLoggedin:Z

    if-nez v6, :cond_0

    .line 312
    sget-object v6, Lcom/miui/notes/gtask/remote/GTaskClient;->TAG:Ljava/lang/String;

    const-string v7, "please login first"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance v6, Lcom/miui/notes/gtask/exception/ActionFailureException;

    const-string v7, "not logged in"

    invoke-direct {v6, v7}, Lcom/miui/notes/gtask/exception/ActionFailureException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 316
    :cond_0
    invoke-direct {p0}, Lcom/miui/notes/gtask/remote/GTaskClient;->createHttpPost()Lorg/apache/http/client/methods/HttpPost;

    move-result-object v2

    .line 318
    .local v2, httpPost:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 319
    .local v4, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "r"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 320
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v6, "UTF-8"

    invoke-direct {v1, v4, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 321
    .local v1, entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 324
    iget-object v6, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v6, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 325
    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/miui/notes/gtask/remote/GTaskClient;->getResponseContent(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    .line 326
    .local v3, jsString:Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    return-object v6

    .line 328
    .end local v1           #entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v3           #jsString:Ljava/lang/String;
    .end local v4           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 329
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    sget-object v6, Lcom/miui/notes/gtask/remote/GTaskClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 331
    new-instance v6, Lcom/miui/notes/gtask/exception/NetworkFailureException;

    const-string v7, "postRequest failed"

    invoke-direct {v6, v7}, Lcom/miui/notes/gtask/exception/NetworkFailureException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 332
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 333
    .local v0, e:Ljava/io/IOException;
    sget-object v6, Lcom/miui/notes/gtask/remote/GTaskClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 335
    new-instance v6, Lcom/miui/notes/gtask/exception/NetworkFailureException;

    const-string v7, "postRequest failed"

    invoke-direct {v6, v7}, Lcom/miui/notes/gtask/exception/NetworkFailureException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 336
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 337
    .local v0, e:Lorg/json/JSONException;
    sget-object v6, Lcom/miui/notes/gtask/remote/GTaskClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 339
    new-instance v6, Lcom/miui/notes/gtask/exception/ActionFailureException;

    const-string v7, "unable to convert response content to jsonobject"

    invoke-direct {v6, v7}, Lcom/miui/notes/gtask/exception/ActionFailureException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 340
    .end local v0           #e:Lorg/json/JSONException;
    :catch_3
    move-exception v0

    .line 341
    .local v0, e:Ljava/lang/Exception;
    sget-object v6, Lcom/miui/notes/gtask/remote/GTaskClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 343
    new-instance v6, Lcom/miui/notes/gtask/exception/ActionFailureException;

    const-string v7, "error occurs when posting request"

    invoke-direct {v6, v7}, Lcom/miui/notes/gtask/exception/ActionFailureException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private tryToLoginGtask(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 3
    .parameter "activity"
    .parameter "authToken"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 195
    invoke-direct {p0, p2}, Lcom/miui/notes/gtask/remote/GTaskClient;->loginGtask(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 198
    invoke-direct {p0, p1, v1}, Lcom/miui/notes/gtask/remote/GTaskClient;->loginGoogleAccount(Landroid/app/Activity;Z)Ljava/lang/String;

    move-result-object p2

    .line 199
    if-nez p2, :cond_0

    .line 200
    sget-object v1, Lcom/miui/notes/gtask/remote/GTaskClient;->TAG:Ljava/lang/String;

    const-string v2, "login google account failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_0
    return v0

    .line 204
    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/notes/gtask/remote/GTaskClient;->loginGtask(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 205
    sget-object v1, Lcom/miui/notes/gtask/remote/GTaskClient;->TAG:Ljava/lang/String;

    const-string v2, "login gtask failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 209
    goto :goto_0
.end method


# virtual methods
.method public addUpdateNode(Lcom/miui/notes/gtask/data/Node;)V
    .locals 2
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/notes/gtask/exception/NetworkFailureException;
        }
    .end annotation

    .prologue
    .line 421
    if-eqz p1, :cond_2

    .line 424
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mUpdateArray:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mUpdateArray:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/miui/notes/gtask/remote/GTaskClient;->commitUpdate()V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mUpdateArray:Lorg/json/JSONArray;

    if-nez v0, :cond_1

    .line 429
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mUpdateArray:Lorg/json/JSONArray;

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mUpdateArray:Lorg/json/JSONArray;

    invoke-direct {p0}, Lcom/miui/notes/gtask/remote/GTaskClient;->getActionId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/notes/gtask/data/Node;->getUpdateAction(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 432
    :cond_2
    return-void
.end method

.method public commitUpdate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/notes/gtask/exception/NetworkFailureException;
        }
    .end annotation

    .prologue
    .line 400
    iget-object v2, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mUpdateArray:Lorg/json/JSONArray;

    if-eqz v2, :cond_0

    .line 402
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 405
    .local v1, jsPost:Lorg/json/JSONObject;
    const-string v2, "action_list"

    iget-object v3, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mUpdateArray:Lorg/json/JSONArray;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    const-string v2, "client_version"

    iget-wide v3, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mClientVersion:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 410
    invoke-direct {p0, v1}, Lcom/miui/notes/gtask/remote/GTaskClient;->postRequest(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 411
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mUpdateArray:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v1           #jsPost:Lorg/json/JSONObject;
    :cond_0
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, e:Lorg/json/JSONException;
    sget-object v2, Lcom/miui/notes/gtask/remote/GTaskClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 415
    new-instance v2, Lcom/miui/notes/gtask/exception/ActionFailureException;

    const-string v3, "commit update: handing jsonobject failed"

    invoke-direct {v2, v3}, Lcom/miui/notes/gtask/exception/ActionFailureException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createTask(Lcom/miui/notes/gtask/data/Task;)V
    .locals 8
    .parameter "task"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/notes/gtask/exception/NetworkFailureException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/miui/notes/gtask/remote/GTaskClient;->commitUpdate()V

    .line 350
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 351
    .local v2, jsPost:Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 354
    .local v0, actionList:Lorg/json/JSONArray;
    invoke-direct {p0}, Lcom/miui/notes/gtask/remote/GTaskClient;->getActionId()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/miui/notes/gtask/data/Task;->getCreateAction(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 355
    const-string v5, "action_list"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    const-string v5, "client_version"

    iget-wide v6, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mClientVersion:J

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 361
    invoke-direct {p0, v2}, Lcom/miui/notes/gtask/remote/GTaskClient;->postRequest(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    .line 362
    .local v3, jsResponse:Lorg/json/JSONObject;
    const-string v5, "results"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 364
    .local v4, jsResult:Lorg/json/JSONObject;
    const-string v5, "new_id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/miui/notes/gtask/data/Task;->setGid(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    return-void

    .line 366
    .end local v0           #actionList:Lorg/json/JSONArray;
    .end local v2           #jsPost:Lorg/json/JSONObject;
    .end local v3           #jsResponse:Lorg/json/JSONObject;
    .end local v4           #jsResult:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 367
    .local v1, e:Lorg/json/JSONException;
    sget-object v5, Lcom/miui/notes/gtask/remote/GTaskClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 369
    new-instance v5, Lcom/miui/notes/gtask/exception/ActionFailureException;

    const-string v6, "create task: handing jsonobject failed"

    invoke-direct {v5, v6}, Lcom/miui/notes/gtask/exception/ActionFailureException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public createTaskList(Lcom/miui/notes/gtask/data/TaskList;)V
    .locals 8
    .parameter "tasklist"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/notes/gtask/exception/NetworkFailureException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/miui/notes/gtask/remote/GTaskClient;->commitUpdate()V

    .line 376
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 377
    .local v2, jsPost:Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 380
    .local v0, actionList:Lorg/json/JSONArray;
    invoke-direct {p0}, Lcom/miui/notes/gtask/remote/GTaskClient;->getActionId()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/miui/notes/gtask/data/TaskList;->getCreateAction(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 381
    const-string v5, "action_list"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    const-string v5, "client_version"

    iget-wide v6, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mClientVersion:J

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 387
    invoke-direct {p0, v2}, Lcom/miui/notes/gtask/remote/GTaskClient;->postRequest(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    .line 388
    .local v3, jsResponse:Lorg/json/JSONObject;
    const-string v5, "results"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 390
    .local v4, jsResult:Lorg/json/JSONObject;
    const-string v5, "new_id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/miui/notes/gtask/data/TaskList;->setGid(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    return-void

    .line 392
    .end local v0           #actionList:Lorg/json/JSONArray;
    .end local v2           #jsPost:Lorg/json/JSONObject;
    .end local v3           #jsResponse:Lorg/json/JSONObject;
    .end local v4           #jsResult:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 393
    .local v1, e:Lorg/json/JSONException;
    sget-object v5, Lcom/miui/notes/gtask/remote/GTaskClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 395
    new-instance v5, Lcom/miui/notes/gtask/exception/ActionFailureException;

    const-string v6, "create tasklist: handing jsonobject failed"

    invoke-direct {v5, v6}, Lcom/miui/notes/gtask/exception/ActionFailureException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public deleteNode(Lcom/miui/notes/gtask/data/Node;)V
    .locals 6
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/notes/gtask/exception/NetworkFailureException;
        }
    .end annotation

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/miui/notes/gtask/remote/GTaskClient;->commitUpdate()V

    .line 476
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 477
    .local v2, jsPost:Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 480
    .local v0, actionList:Lorg/json/JSONArray;
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/miui/notes/gtask/data/Node;->setDeleted(Z)V

    .line 481
    invoke-direct {p0}, Lcom/miui/notes/gtask/remote/GTaskClient;->getActionId()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/miui/notes/gtask/data/Node;->getUpdateAction(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 482
    const-string v3, "action_list"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 485
    const-string v3, "client_version"

    iget-wide v4, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mClientVersion:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 487
    invoke-direct {p0, v2}, Lcom/miui/notes/gtask/remote/GTaskClient;->postRequest(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 488
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mUpdateArray:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    return-void

    .line 489
    .end local v0           #actionList:Lorg/json/JSONArray;
    .end local v2           #jsPost:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 490
    .local v1, e:Lorg/json/JSONException;
    sget-object v3, Lcom/miui/notes/gtask/remote/GTaskClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 492
    new-instance v3, Lcom/miui/notes/gtask/exception/ActionFailureException;

    const-string v4, "delete node: handing jsonobject failed"

    invoke-direct {v3, v4}, Lcom/miui/notes/gtask/exception/ActionFailureException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getSyncAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getTaskList(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 8
    .parameter "listGid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/notes/gtask/exception/NetworkFailureException;
        }
    .end annotation

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/miui/notes/gtask/remote/GTaskClient;->commitUpdate()V

    .line 537
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 538
    .local v3, jsPost:Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 539
    .local v1, actionList:Lorg/json/JSONArray;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 542
    .local v0, action:Lorg/json/JSONObject;
    const-string v5, "action_type"

    const-string v6, "get_all"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 544
    const-string v5, "action_id"

    invoke-direct {p0}, Lcom/miui/notes/gtask/remote/GTaskClient;->getActionId()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 545
    const-string v5, "list_id"

    invoke-virtual {v0, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 546
    const-string v5, "get_deleted"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 547
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 548
    const-string v5, "action_list"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 551
    const-string v5, "client_version"

    iget-wide v6, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mClientVersion:J

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 553
    invoke-direct {p0, v3}, Lcom/miui/notes/gtask/remote/GTaskClient;->postRequest(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 554
    .local v4, jsResponse:Lorg/json/JSONObject;
    const-string v5, "tasks"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 555
    .end local v0           #action:Lorg/json/JSONObject;
    .end local v1           #actionList:Lorg/json/JSONArray;
    .end local v3           #jsPost:Lorg/json/JSONObject;
    .end local v4           #jsResponse:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 556
    .local v2, e:Lorg/json/JSONException;
    sget-object v5, Lcom/miui/notes/gtask/remote/GTaskClient;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 558
    new-instance v5, Lcom/miui/notes/gtask/exception/ActionFailureException;

    const-string v6, "get task list: handing jsonobject failed"

    invoke-direct {v5, v6}, Lcom/miui/notes/gtask/exception/ActionFailureException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getTaskLists()Lorg/json/JSONArray;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/notes/gtask/exception/NetworkFailureException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    .line 497
    iget-boolean v10, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mLoggedin:Z

    if-nez v10, :cond_0

    .line 498
    sget-object v10, Lcom/miui/notes/gtask/remote/GTaskClient;->TAG:Ljava/lang/String;

    const-string v11, "please login first"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    new-instance v10, Lcom/miui/notes/gtask/exception/ActionFailureException;

    const-string v11, "not logged in"

    invoke-direct {v10, v11}, Lcom/miui/notes/gtask/exception/ActionFailureException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 503
    :cond_0
    :try_start_0
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    iget-object v10, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mGetUrl:Ljava/lang/String;

    invoke-direct {v3, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 504
    .local v3, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const/4 v9, 0x0

    .line 505
    .local v9, response:Lorg/apache/http/HttpResponse;
    iget-object v10, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v10, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 508
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/miui/notes/gtask/remote/GTaskClient;->getResponseContent(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v8

    .line 509
    .local v8, resString:Ljava/lang/String;
    const-string v5, "_setup("

    .line 510
    .local v5, jsBegin:Ljava/lang/String;
    const-string v6, ")}</script>"

    .line 511
    .local v6, jsEnd:Ljava/lang/String;
    invoke-virtual {v8, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 512
    .local v0, begin:I
    invoke-virtual {v8, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 513
    .local v2, end:I
    const/4 v7, 0x0

    .line 514
    .local v7, jsString:Ljava/lang/String;
    if-eq v0, v11, :cond_1

    if-eq v2, v11, :cond_1

    if-ge v0, v2, :cond_1

    .line 515
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v0

    invoke-virtual {v8, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 517
    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 518
    .local v4, js:Lorg/json/JSONObject;
    const-string v10, "t"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "lists"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v10

    return-object v10

    .line 519
    .end local v0           #begin:I
    .end local v2           #end:I
    .end local v3           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #js:Lorg/json/JSONObject;
    .end local v5           #jsBegin:Ljava/lang/String;
    .end local v6           #jsEnd:Ljava/lang/String;
    .end local v7           #jsString:Ljava/lang/String;
    .end local v8           #resString:Ljava/lang/String;
    .end local v9           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 520
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    sget-object v10, Lcom/miui/notes/gtask/remote/GTaskClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 522
    new-instance v10, Lcom/miui/notes/gtask/exception/NetworkFailureException;

    const-string v11, "gettasklists: httpget failed"

    invoke-direct {v10, v11}, Lcom/miui/notes/gtask/exception/NetworkFailureException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 523
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v1

    .line 524
    .local v1, e:Ljava/io/IOException;
    sget-object v10, Lcom/miui/notes/gtask/remote/GTaskClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 526
    new-instance v10, Lcom/miui/notes/gtask/exception/NetworkFailureException;

    const-string v11, "gettasklists: httpget failed"

    invoke-direct {v10, v11}, Lcom/miui/notes/gtask/exception/NetworkFailureException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 527
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 528
    .local v1, e:Lorg/json/JSONException;
    sget-object v10, Lcom/miui/notes/gtask/remote/GTaskClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 530
    new-instance v10, Lcom/miui/notes/gtask/exception/ActionFailureException;

    const-string v11, "get task lists: handing jasonobject failed"

    invoke-direct {v10, v11}, Lcom/miui/notes/gtask/exception/ActionFailureException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public login(Landroid/app/Activity;)Z
    .locals 12
    .parameter "activity"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 99
    const-wide/32 v2, 0x493e0

    .line 100
    .local v2, interval:J
    iget-wide v8, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mLastLoginTime:J

    const-wide/32 v10, 0x493e0

    add-long/2addr v8, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 101
    iput-boolean v7, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mLoggedin:Z

    .line 105
    :cond_0
    iget-boolean v8, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mLoggedin:Z

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/miui/notes/gtask/remote/GTaskClient;->getSyncAccount()Landroid/accounts/Account;

    move-result-object v8

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p1}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getSyncAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 108
    iput-boolean v7, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mLoggedin:Z

    .line 111
    :cond_1
    iget-boolean v8, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mLoggedin:Z

    if-eqz v8, :cond_2

    .line 112
    sget-object v7, Lcom/miui/notes/gtask/remote/GTaskClient;->TAG:Ljava/lang/String;

    const-string v8, "already logged in"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_0
    return v6

    .line 116
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mLastLoginTime:J

    .line 117
    invoke-direct {p0, p1, v7}, Lcom/miui/notes/gtask/remote/GTaskClient;->loginGoogleAccount(Landroid/app/Activity;Z)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, authToken:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 119
    sget-object v6, Lcom/miui/notes/gtask/remote/GTaskClient;->TAG:Ljava/lang/String;

    const-string v8, "login google account failed"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 120
    goto :goto_0

    .line 124
    :cond_3
    iget-object v8, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mAccount:Landroid/accounts/Account;

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "gmail.com"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mAccount:Landroid/accounts/Account;

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "googlemail.com"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 126
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "https://mail.google.com/tasks/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "a/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 127
    .local v5, url:Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mAccount:Landroid/accounts/Account;

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/16 v9, 0x40

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v1, v8, 0x1

    .line 128
    .local v1, index:I
    iget-object v8, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mAccount:Landroid/accounts/Account;

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, suffix:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ig"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mGetUrl:Ljava/lang/String;

    .line 131
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "r/ig"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mPostUrl:Ljava/lang/String;

    .line 133
    invoke-direct {p0, p1, v0}, Lcom/miui/notes/gtask/remote/GTaskClient;->tryToLoginGtask(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 134
    iput-boolean v6, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mLoggedin:Z

    .line 139
    .end local v1           #index:I
    .end local v4           #suffix:Ljava/lang/String;
    .end local v5           #url:Ljava/lang/StringBuilder;
    :cond_4
    iget-boolean v8, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mLoggedin:Z

    if-nez v8, :cond_5

    .line 140
    const-string v8, "https://mail.google.com/tasks/ig"

    iput-object v8, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mGetUrl:Ljava/lang/String;

    .line 141
    const-string v8, "https://mail.google.com/tasks/r/ig"

    iput-object v8, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mPostUrl:Ljava/lang/String;

    .line 142
    invoke-direct {p0, p1, v0}, Lcom/miui/notes/gtask/remote/GTaskClient;->tryToLoginGtask(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    move v6, v7

    .line 143
    goto/16 :goto_0

    .line 147
    :cond_5
    iput-boolean v6, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mLoggedin:Z

    goto/16 :goto_0
.end method

.method public moveTask(Lcom/miui/notes/gtask/data/Task;Lcom/miui/notes/gtask/data/TaskList;Lcom/miui/notes/gtask/data/TaskList;)V
    .locals 7
    .parameter "task"
    .parameter "preParent"
    .parameter "curParent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/notes/gtask/exception/NetworkFailureException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/miui/notes/gtask/remote/GTaskClient;->commitUpdate()V

    .line 438
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 439
    .local v3, jsPost:Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 440
    .local v1, actionList:Lorg/json/JSONArray;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 443
    .local v0, action:Lorg/json/JSONObject;
    const-string v4, "action_type"

    const-string v5, "move"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 445
    const-string v4, "action_id"

    invoke-direct {p0}, Lcom/miui/notes/gtask/remote/GTaskClient;->getActionId()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 446
    const-string v4, "id"

    invoke-virtual {p1}, Lcom/miui/notes/gtask/data/Task;->getGid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 447
    if-ne p2, p3, :cond_0

    invoke-virtual {p1}, Lcom/miui/notes/gtask/data/Task;->getPriorSibling()Lcom/miui/notes/gtask/data/Task;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 450
    const-string v4, "prior_sibling_id"

    invoke-virtual {p1}, Lcom/miui/notes/gtask/data/Task;->getPriorSibling()Lcom/miui/notes/gtask/data/Task;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 452
    :cond_0
    const-string v4, "source_list"

    invoke-virtual {p2}, Lcom/miui/notes/gtask/data/TaskList;->getGid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 453
    const-string v4, "dest_parent"

    invoke-virtual {p3}, Lcom/miui/notes/gtask/data/TaskList;->getGid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 454
    if-eq p2, p3, :cond_1

    .line 456
    const-string v4, "dest_list"

    invoke-virtual {p3}, Lcom/miui/notes/gtask/data/TaskList;->getGid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 458
    :cond_1
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 459
    const-string v4, "action_list"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 462
    const-string v4, "client_version"

    iget-wide v5, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mClientVersion:J

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 464
    invoke-direct {p0, v3}, Lcom/miui/notes/gtask/remote/GTaskClient;->postRequest(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    return-void

    .line 466
    .end local v0           #action:Lorg/json/JSONObject;
    .end local v1           #actionList:Lorg/json/JSONArray;
    .end local v3           #jsPost:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 467
    .local v2, e:Lorg/json/JSONException;
    sget-object v4, Lcom/miui/notes/gtask/remote/GTaskClient;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 469
    new-instance v4, Lcom/miui/notes/gtask/exception/ActionFailureException;

    const-string v5, "move task: handing jsonobject failed"

    invoke-direct {v4, v5}, Lcom/miui/notes/gtask/exception/ActionFailureException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public resetUpdateArray()V
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskClient;->mUpdateArray:Lorg/json/JSONArray;

    .line 568
    return-void
.end method
