.class public Lcom/xiaomi/common/util/Network;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/common/util/Network$DownloadTask;,
        Lcom/xiaomi/common/util/Network$PostDownloadHandler;,
        Lcom/xiaomi/common/util/Network$HttpHeaderInfo;
    }
.end annotation


# static fields
.field public static final CMWAP_GATEWAY:Ljava/lang/String; = "10.0.0.172"

.field private static final CMWAP_HEADER_HOST_KEY:Ljava/lang/String; = "X-Online-Host"

.field public static final CMWAP_PORT:I = 0x50

.field public static final ContentTypePattern_Charset:Ljava/util/regex/Pattern; = null

.field public static final ContentTypePattern_MimeType:Ljava/util/regex/Pattern; = null

.field public static final ContentTypePattern_XmlEncoding:Ljava/util/regex/Pattern; = null

.field private static final LogTag:Ljava/lang/String; = "com.xiaomi.common.Network"

.field public static final UserAgent_PC_Chrome:Ljava/lang/String; = "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.464.0 Safari/534.3"

.field public static final UserAgent_PC_Chrome_6_0_464_0:Ljava/lang/String; = "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.464.0 Safari/534.3"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 299
    const-string v0, "([^\\s;]+)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/common/util/Network;->ContentTypePattern_MimeType:Ljava/util/regex/Pattern;

    .line 301
    const-string v0, "(.*?charset\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/common/util/Network;->ContentTypePattern_Charset:Ljava/util/regex/Pattern;

    .line 304
    const-string v0, "(\\<\\?xml\\s+.*?encoding\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/common/util/Network;->ContentTypePattern_XmlEncoding:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    return-void
.end method

.method public static beginDownloadFile(Ljava/lang/String;Ljava/io/OutputStream;Lcom/xiaomi/common/util/Network$PostDownloadHandler;)V
    .locals 2
    .parameter "url"
    .parameter "output"
    .parameter "handler"

    .prologue
    .line 564
    new-instance v0, Lcom/xiaomi/common/util/Network$DownloadTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/common/util/Network$DownloadTask;-><init>(Ljava/lang/String;Ljava/io/OutputStream;Lcom/xiaomi/common/util/Network$PostDownloadHandler;)V

    .line 565
    .local v0, task:Lcom/xiaomi/common/util/Network$DownloadTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/xiaomi/common/util/Network$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 566
    return-void
.end method

.method public static doHttpGet(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "strUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    const/16 v0, 0x1f40

    const/16 v1, 0x3a98

    invoke-static {p0, v0, v1}, Lcom/xiaomi/common/util/Network;->doHttpGet(Ljava/lang/String;II)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static doHttpGet(Ljava/lang/String;II)Ljava/io/InputStream;
    .locals 11
    .parameter "strUrl"
    .parameter "connTimeOut"
    .parameter "soTimeOut"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 508
    const/4 v5, 0x0

    .line 535
    :cond_0
    :goto_0
    return-object v5

    .line 511
    :cond_1
    const/4 v5, 0x0

    .line 513
    .local v5, instream:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 514
    .local v3, httpRequest:Lorg/apache/http/client/methods/HttpGet;
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 515
    .local v6, lrcUrl:Ljava/net/URL;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    .end local v3           #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v6}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v9

    invoke-direct {v3, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 516
    .restart local v3       #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    const-string v9, "User-agent"

    const-string v10, "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.464.0 Safari/534.3"

    invoke-virtual {v3, v9, v10}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 519
    .local v2, httpParameters:Lorg/apache/http/params/HttpParams;
    if-lez p1, :cond_2

    .line 520
    invoke-static {v2, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 522
    :cond_2
    if-lez p2, :cond_3

    .line 523
    invoke-static {v2, p2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 525
    :cond_3
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 527
    .local v4, httpclient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v4, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 528
    .local v7, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 529
    .local v8, statusCode:I
    const/16 v9, 0xc8

    if-lt v8, v9, :cond_0

    const/16 v9, 0x12c

    if-ge v8, v9, :cond_0

    .line 530
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 531
    .local v1, entity:Lorg/apache/http/HttpEntity;
    new-instance v0, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v0, v1}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 532
    .local v0, bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    invoke-virtual {v0}, Lorg/apache/http/entity/BufferedHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    goto :goto_0
.end method

.method public static doHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v3, 0x0

    .line 434
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/common/util/Network;->doHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static doHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .parameter "context"
    .parameter "url"
    .parameter
    .parameter
    .parameter "userAgent"
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    .local p2, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 440
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "url"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 442
    :cond_0
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 443
    .local v6, httpParameters:Lorg/apache/http/params/BasicHttpParams;
    const/16 v13, 0x1388

    invoke-static {v6, v13}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 444
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 445
    const-string v13, "User-agent"

    move-object/from16 v0, p4

    invoke-virtual {v6, v13, v0}, Lorg/apache/http/params/BasicHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 448
    :cond_1
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 449
    const-string v13, "Cookie"

    move-object/from16 v0, p5

    invoke-virtual {v6, v13, v0}, Lorg/apache/http/params/BasicHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 451
    :cond_2
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 453
    .local v7, httpclient:Lorg/apache/http/client/HttpClient;
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/common/util/Network;->isCmwap(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 454
    new-instance v2, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 455
    .local v2, _url:Ljava/net/URL;
    invoke-static {v2}, Lcom/xiaomi/common/util/Network;->getCMWapUrl(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v4

    .line 456
    .local v4, cmwapUrl:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 457
    .local v5, host:Ljava/lang/String;
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v8, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 458
    .local v8, httppost:Lorg/apache/http/client/methods/HttpPost;
    const-string v13, "X-Online-Host"

    invoke-virtual {v8, v13, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    .end local v2           #_url:Ljava/net/URL;
    .end local v4           #cmwapUrl:Ljava/lang/String;
    .end local v5           #host:Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v13, :cond_3

    .line 464
    new-instance v13, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v14, "UTF-8"

    move-object/from16 v0, p2

    invoke-direct {v13, v0, v14}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 466
    :cond_3
    invoke-interface {v7, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 467
    .local v10, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    .line 468
    .local v12, statusCode:I
    const-string v13, "com.xiaomi.common.Network"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Http POST Response Code: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/16 v13, 0xc8

    if-lt v12, v13, :cond_7

    const/16 v13, 0x12c

    if-ge v12, v13, :cond_7

    .line 472
    if-eqz p3, :cond_5

    .line 473
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    .line 474
    .local v1, _headers:[Lorg/apache/http/Header;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    array-length v13, v1

    if-ge v9, v13, :cond_5

    .line 475
    aget-object v13, v1, v9

    invoke-interface {v13}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v13

    aget-object v14, v1, v9

    invoke-interface {v14}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 460
    .end local v1           #_headers:[Lorg/apache/http/Header;
    .end local v8           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local v9           #i:I
    .end local v10           #response:Lorg/apache/http/HttpResponse;
    .end local v12           #statusCode:I
    :cond_4
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .restart local v8       #httppost:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_0

    .line 478
    .restart local v10       #response:Lorg/apache/http/HttpResponse;
    .restart local v12       #statusCode:I
    :cond_5
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 479
    .local v3, body:Lorg/apache/http/HttpEntity;
    if-eqz v3, :cond_6

    .line 480
    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v11

    .line 482
    .local v11, result:Ljava/lang/String;
    if-eqz v11, :cond_6

    .line 489
    .end local v3           #body:Lorg/apache/http/HttpEntity;
    .end local v11           #result:Ljava/lang/String;
    :goto_2
    return-object v11

    .line 486
    .restart local v3       #body:Lorg/apache/http/HttpEntity;
    :cond_6
    const-string v11, ""

    goto :goto_2

    .line 489
    .end local v3           #body:Lorg/apache/http/HttpEntity;
    :cond_7
    const/4 v11, 0x0

    goto :goto_2
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 8
    .parameter "urlStr"
    .parameter "output"

    .prologue
    const/4 v6, 0x0

    .line 577
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 578
    .local v5, url:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 579
    .local v1, conn:Ljava/net/HttpURLConnection;
    const/16 v7, 0x1388

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 580
    const/16 v7, 0x3a98

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 581
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 582
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 584
    .local v4, input:Ljava/io/InputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 587
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, count:I
    if-lez v2, :cond_0

    .line 588
    const/4 v7, 0x0

    invoke-virtual {p1, v0, v7, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 594
    .end local v0           #buffer:[B
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v2           #count:I
    .end local v4           #input:Ljava/io/InputStream;
    .end local v5           #url:Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 595
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 598
    .end local v3           #e:Ljava/io/IOException;
    :goto_1
    return v6

    .line 591
    .restart local v0       #buffer:[B
    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    .restart local v2       #count:I
    .restart local v4       #input:Ljava/io/InputStream;
    .restart local v5       #url:Ljava/net/URL;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 592
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 593
    const/4 v6, 0x1

    goto :goto_1
.end method

.method public static downloadXml(Landroid/content/Context;Ljava/net/URL;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 158
    const/4 v2, 0x0

    const-string v4, "UTF-8"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/common/util/Network;->downloadXml(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static downloadXml(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "url"
    .parameter "noEncryptUrl"
    .parameter "userAgent"
    .parameter "encoding"
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    const/4 v3, 0x0

    .line 166
    .local v3, responseStream:Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0, p1, p2, p3, p5}, Lcom/xiaomi/common/util/Network;->downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x400

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 168
    .local v5, sbReponse:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3, p4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v7, 0x400

    invoke-direct {v2, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 171
    .local v2, reader:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 176
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #reader:Ljava/io/BufferedReader;
    .end local v5           #sbReponse:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_0

    .line 178
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    :cond_0
    :goto_1
    throw v6

    .line 176
    .restart local v1       #line:Ljava/lang/String;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    .restart local v5       #sbReponse:Ljava/lang/StringBuilder;
    :cond_1
    if-eqz v3, :cond_2

    .line 178
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 185
    :cond_2
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, responseXml:Ljava/lang/String;
    return-object v4

    .line 179
    .end local v4           #responseXml:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Ljava/io/IOException;
    const-string v6, "com.xiaomi.common.Network"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close responseStream"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 179
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #reader:Ljava/io/BufferedReader;
    .end local v5           #sbReponse:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v0

    .line 180
    .restart local v0       #e:Ljava/io/IOException;
    const-string v7, "com.xiaomi.common.Network"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close responseStream"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;)Ljava/io/InputStream;
    .locals 7
    .parameter "context"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 63
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/common/util/Network;->downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/common/util/Network$HttpHeaderInfo;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "noEncryptUrl"
    .parameter "userAgent"
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 68
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/common/util/Network;->downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/common/util/Network$HttpHeaderInfo;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/common/util/Network$HttpHeaderInfo;)Ljava/io/InputStream;
    .locals 11
    .parameter "context"
    .parameter "url"
    .parameter "noEncryptUrl"
    .parameter "userAgent"
    .parameter "cookie"
    .parameter
    .parameter "responseHdrs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/net/URL;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaomi/common/util/Network$HttpHeaderInfo;",
            ")",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    .local p5, requestHdrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 90
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "url"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 92
    :cond_0
    move-object v6, p1

    .line 93
    .local v6, newUrl:Ljava/net/URL;
    if-nez p2, :cond_1

    .line 94
    new-instance v6, Ljava/net/URL;

    .end local v6           #newUrl:Ljava/net/URL;
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/xiaomi/common/util/Network;->encryptURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 96
    .restart local v6       #newUrl:Ljava/net/URL;
    :cond_1
    const/4 v7, 0x0

    .line 97
    .local v7, responseStream:Ljava/io/InputStream;
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 98
    invoke-static {p0, v6}, Lcom/xiaomi/common/util/Network;->getHttpUrlConnection(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 99
    .local v1, conn:Ljava/net/HttpURLConnection;
    const/16 v9, 0x1388

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 100
    const v9, 0x1d4c0

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 101
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 102
    const-string v9, "User-agent"

    invoke-virtual {v1, v9, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_2
    if-eqz p4, :cond_3

    .line 105
    const-string v9, "Cookie"

    invoke-virtual {v1, v9, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_3
    if-eqz p5, :cond_4

    .line 108
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 109
    .local v4, key:Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v4, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    :cond_4
    if-eqz p6, :cond_7

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    const-string v10, "http"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    const-string v10, "https"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 115
    :cond_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    move-object/from16 v0, p6

    iput v9, v0, Lcom/xiaomi/common/util/Network$HttpHeaderInfo;->ResponseCode:I

    .line 116
    move-object/from16 v0, p6

    iget-object v9, v0, Lcom/xiaomi/common/util/Network$HttpHeaderInfo;->AllHeaders:Ljava/util/Map;

    if-nez v9, :cond_6

    .line 117
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p6

    iput-object v9, v0, Lcom/xiaomi/common/util/Network$HttpHeaderInfo;->AllHeaders:Ljava/util/Map;

    .line 118
    :cond_6
    const/4 v2, 0x0

    .line 119
    .local v2, i:I
    :goto_1
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v5

    .line 120
    .local v5, name:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v8

    .line 122
    .local v8, value:Ljava/lang/String;
    if-nez v5, :cond_8

    if-nez v8, :cond_8

    .line 132
    .end local v2           #i:I
    .end local v5           #name:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_7
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 133
    return-object v7

    .line 124
    .restart local v2       #i:I
    .restart local v5       #name:Ljava/lang/String;
    .restart local v8       #value:Ljava/lang/String;
    :cond_8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 118
    :cond_9
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 126
    :cond_a
    if-eqz v5, :cond_9

    .line 127
    move-object/from16 v0, p6

    iget-object v9, v0, Lcom/xiaomi/common/util/Network$HttpHeaderInfo;->AllHeaders:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public static downloadXmlAsStreamWithoutRedirect(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .parameter "url"
    .parameter "userAgent"
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v2, 0x0

    .line 139
    .local v2, responseStream:Ljava/io/InputStream;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 140
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 141
    .local v0, conn:Ljava/net/HttpURLConnection;
    const/16 v3, 0x1388

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 142
    const v3, 0x1d4c0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 144
    const-string v3, "User-agent"

    invoke-virtual {v0, v3, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    if-eqz p2, :cond_1

    .line 147
    const-string v3, "Cookie"

    invoke-virtual {v0, v3, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 151
    .local v1, resCode:I
    const/16 v3, 0x12c

    if-lt v1, v3, :cond_2

    const/16 v3, 0x190

    if-lt v1, v3, :cond_3

    .line 152
    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 154
    :cond_3
    return-object v2
.end method

.method public static encryptURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "strUrl"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 543
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 544
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 545
    const-string v1, "%sbe988a6134bc8254465424e5a70ef037"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, strTemp:Ljava/lang/String;
    const-string v1, "%s&key=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0}, Lcom/xiaomi/common/util/MD5;->MD5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 548
    .end local v0           #strTemp:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getActiveNetworkName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 727
    const-string v1, "null"

    .line 728
    .local v1, defaultValue:Ljava/lang/String;
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 730
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 737
    .end local v1           #defaultValue:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 732
    .restart local v1       #defaultValue:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 733
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 735
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 736
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 737
    :cond_2
    const-string v3, "%s-%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getActiveNetworkType(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 711
    const/4 v1, -0x1

    .line 712
    .local v1, defaultValue:I
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 714
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 719
    .end local v1           #defaultValue:I
    :cond_0
    :goto_0
    return v1

    .line 716
    .restart local v1       #defaultValue:I
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 717
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 719
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    goto :goto_0
.end method

.method private static getCMWapUrl(Ljava/net/URL;)Ljava/lang/String;
    .locals 3
    .parameter "oriUrl"

    .prologue
    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 775
    .local v0, gatewayBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "10.0.0.172"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    invoke-virtual {p0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 780
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHttpHeaderInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/common/util/Network$HttpHeaderInfo;
    .locals 12
    .parameter "urlString"
    .parameter "userAgent"
    .parameter "cookie"

    .prologue
    const/4 v9, 0x0

    .line 353
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 354
    .local v7, url:Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    const-string v11, "http"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    const-string v11, "https"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    move-object v5, v9

    .line 408
    .end local v7           #url:Ljava/net/URL;
    :cond_0
    :goto_0
    return-object v5

    .line 358
    .restart local v7       #url:Ljava/net/URL;
    :cond_1
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 359
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 360
    .local v1, conn:Ljava/net/HttpURLConnection;
    const-string v10, "wap"

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_8

    .line 361
    const/16 v10, 0x1388

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 362
    const/16 v10, 0x1388

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 369
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 370
    const-string v10, "User-agent"

    invoke-virtual {v1, v10, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_2
    if-eqz p2, :cond_3

    .line 374
    const-string v10, "Cookie"

    invoke-virtual {v1, v10, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_3
    new-instance v5, Lcom/xiaomi/common/util/Network$HttpHeaderInfo;

    invoke-direct {v5}, Lcom/xiaomi/common/util/Network$HttpHeaderInfo;-><init>()V

    .line 378
    .local v5, ret:Lcom/xiaomi/common/util/Network$HttpHeaderInfo;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    iput v10, v5, Lcom/xiaomi/common/util/Network$HttpHeaderInfo;->ResponseCode:I

    .line 380
    iput-object p1, v5, Lcom/xiaomi/common/util/Network$HttpHeaderInfo;->UserAgent:Ljava/lang/String;

    .line 381
    const/4 v3, 0x0

    .line 382
    .local v3, i:I
    :goto_2
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v4

    .line 383
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v8

    .line 384
    .local v8, value:Ljava/lang/String;
    if-nez v4, :cond_4

    if-eqz v8, :cond_0

    .line 387
    :cond_4
    if-eqz v4, :cond_5

    const-string v10, "content-type"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 388
    iput-object v8, v5, Lcom/xiaomi/common/util/Network$HttpHeaderInfo;->ContentType:Ljava/lang/String;

    .line 391
    :cond_5
    if-eqz v4, :cond_7

    const-string v10, "location"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 392
    new-instance v6, Ljava/net/URI;

    invoke-direct {v6, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 393
    .local v6, uri:Ljava/net/URI;
    invoke-virtual {v6}, Ljava/net/URI;->isAbsolute()Z

    move-result v10

    if-nez v10, :cond_6

    .line 394
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 395
    .local v0, baseUri:Ljava/net/URI;
    invoke-virtual {v0, v6}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v6

    .line 397
    .end local v0           #baseUri:Ljava/net/URI;
    :cond_6
    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/xiaomi/common/util/Network$HttpHeaderInfo;->realUrl:Ljava/lang/String;

    .line 381
    .end local v6           #uri:Ljava/net/URI;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 366
    .end local v3           #i:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #ret:Lcom/xiaomi/common/util/Network$HttpHeaderInfo;
    .end local v8           #value:Ljava/lang/String;
    :cond_8
    const/16 v10, 0x3a98

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 367
    const/16 v10, 0x3a98

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 401
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v7           #url:Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 402
    .local v2, e:Ljava/net/MalformedURLException;
    const-string v10, "com.xiaomi.common.Network"

    const-string v11, "Failed to transform URL"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2           #e:Ljava/net/MalformedURLException;
    :goto_3
    move-object v5, v9

    .line 408
    goto/16 :goto_0

    .line 403
    :catch_1
    move-exception v2

    .line 404
    .local v2, e:Ljava/io/IOException;
    const-string v10, "com.xiaomi.common.Network"

    const-string v11, "Failed to get mime type"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 405
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 406
    .local v2, e:Ljava/net/URISyntaxException;
    const-string v10, "com.xiaomi.common.Network"

    const-string v11, "Failed to parse URI"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public static getHttpPostAsStream(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 9
    .parameter "url"
    .parameter "data"
    .parameter
    .parameter "userAgent"
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x1

    .line 310
    if-nez p0, :cond_0

    .line 311
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "url"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 313
    :cond_0
    move-object v3, p0

    .line 315
    .local v3, newUrl:Ljava/net/URL;
    const/4 v5, 0x0

    .line 316
    .local v5, responseStream:Ljava/io/InputStream;
    invoke-static {v8}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 317
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 318
    .local v0, conn:Ljava/net/HttpURLConnection;
    const/16 v7, 0x1388

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 319
    const/16 v7, 0x3a98

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 320
    const-string v7, "POST"

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 323
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 324
    const-string v7, "User-agent"

    invoke-virtual {v0, v7, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 328
    const-string v7, "Cookie"

    invoke-virtual {v0, v7, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 332
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 333
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 335
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 336
    .local v4, responseCode:Ljava/lang/String;
    const-string v7, "ResponseCode"

    invoke-interface {p2, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const/4 v1, 0x0

    .line 339
    .local v1, i:I
    :goto_0
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v6

    .line 341
    .local v6, value:Ljava/lang/String;
    if-nez v2, :cond_3

    if-nez v6, :cond_3

    .line 347
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 348
    return-object v5

    .line 344
    :cond_3
    invoke-interface {p2, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getHttpUrlConnection(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 5
    .parameter "context"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 762
    invoke-static {p0}, Lcom/xiaomi/common/util/Network;->isCmwap(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 763
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 770
    :goto_0
    return-object v4

    .line 765
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 766
    .local v3, host:Ljava/lang/String;
    invoke-static {p1}, Lcom/xiaomi/common/util/Network;->getCMWapUrl(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, cmwapUrl:Ljava/lang/String;
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 768
    .local v2, gatewayUrl:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 769
    .local v1, conn:Ljava/net/HttpURLConnection;
    const-string v4, "X-Online-Host"

    invoke-virtual {v1, v4, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v1

    .line 770
    goto :goto_0
.end method

.method public static isActive(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 723
    invoke-static {p0}, Lcom/xiaomi/common/util/Network;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCmwap(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 745
    if-nez p0, :cond_1

    .line 758
    :cond_0
    :goto_0
    return v4

    .line 748
    :cond_1
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 750
    .local v6, cm:Landroid/net/ConnectivityManager;
    if-eqz v6, :cond_0

    .line 752
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 753
    .local v7, info:Landroid/net/NetworkInfo;
    if-eqz v7, :cond_0

    .line 755
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, extraInfo:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v5, :cond_0

    .line 758
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    const-string v3, "wap"

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    goto :goto_0
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 741
    invoke-static {p0}, Lcom/xiaomi/common/util/Network;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static tryDetectCharsetEncoding(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "url"
    .parameter "userAgent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    if-nez p0, :cond_0

    .line 229
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "url"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 231
    :cond_0
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 232
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 233
    .local v2, conn:Ljava/net/HttpURLConnection;
    const/16 v9, 0x1388

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 234
    const/16 v9, 0x3a98

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 236
    const-string v9, "User-agent"

    invoke-virtual {v2, v9, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_1
    const/4 v8, 0x0

    .line 243
    .local v8, ret:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, contentType:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 245
    sget-object v9, Lcom/xiaomi/common/util/Network;->ContentTypePattern_Charset:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 246
    .local v4, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_2

    .line 247
    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, charset:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 249
    move-object v8, v1

    .line 250
    const-string v9, "com.xiaomi.common.Network"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HTTP charset detected is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .end local v1           #charset:Ljava/lang/String;
    :cond_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 257
    sget-object v9, Lcom/xiaomi/common/util/Network;->ContentTypePattern_MimeType:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 258
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_6

    .line 259
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, mimetype:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 261
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 262
    const-string v9, "application/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "application/xml"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "+xml"

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 265
    :cond_3
    const/4 v7, 0x0

    .line 267
    .local v7, responseStream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 268
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 271
    .local v6, reader:Ljava/io/BufferedReader;
    :cond_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, aLine:Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 272
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_4

    .line 276
    sget-object v9, Lcom/xiaomi/common/util/Network;->ContentTypePattern_XmlEncoding:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 277
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_5

    .line 278
    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 279
    .restart local v1       #charset:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 280
    move-object v8, v1

    .line 281
    const-string v9, "com.xiaomi.common.Network"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "XML charset detected is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    .end local v1           #charset:Ljava/lang/String;
    :cond_5
    if-eqz v7, :cond_6

    .line 288
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 296
    .end local v0           #aLine:Ljava/lang/String;
    .end local v4           #matcher:Ljava/util/regex/Matcher;
    .end local v5           #mimetype:Ljava/lang/String;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .end local v7           #responseStream:Ljava/io/InputStream;
    :cond_6
    return-object v8

    .line 287
    .restart local v4       #matcher:Ljava/util/regex/Matcher;
    .restart local v5       #mimetype:Ljava/lang/String;
    .restart local v7       #responseStream:Ljava/io/InputStream;
    :catchall_0
    move-exception v9

    if-eqz v7, :cond_7

    .line 288
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_7
    throw v9
.end method

.method public static uploadFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 25
    .parameter "url"
    .parameter "file"
    .parameter "fileKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_1

    .line 604
    const/16 v22, 0x0

    .line 682
    :cond_0
    :goto_0
    return-object v22

    .line 606
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    .line 608
    .local v14, filename:Ljava/lang/String;
    const/4 v8, 0x0

    .line 610
    .local v8, conn:Ljava/net/HttpURLConnection;
    const-string v17, "\r\n"

    .line 611
    .local v17, lineEnd:Ljava/lang/String;
    const-string v21, "--"

    .line 612
    .local v21, twoHyphens:Ljava/lang/String;
    const-string v5, "*****"

    .line 614
    .local v5, boundary:Ljava/lang/String;
    const/4 v12, 0x0

    .line 615
    .local v12, fileInputStream:Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 616
    .local v9, dos:Ljava/io/DataOutputStream;
    const/16 v18, 0x0

    .line 619
    .local v18, rd:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 620
    .local v4, _url:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 621
    const v22, 0xea60

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 622
    const/16 v22, 0x1388

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 625
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 626
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 627
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 630
    const-string v22, "POST"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 631
    const-string v22, "Connection"

    const-string v23, "Keep-Alive"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v22, "Content-Type"

    const-string v23, "multipart/form-data;boundary=*****"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const/16 v3, 0x4d

    .line 635
    .local v3, EXTRA_LEN:I
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, 0x4d

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v23

    move-wide/from16 v0, v23

    long-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v23

    add-int v15, v22, v23

    .line 636
    .local v15, len:I
    invoke-virtual {v8, v15}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 638
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 639
    .end local v9           #dos:Ljava/io/DataOutputStream;
    .local v10, dos:Ljava/io/DataOutputStream;
    :try_start_1
    const-string v22, "--*****\r\n"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 640
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Content-Disposition: form-data; name=\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\";filename=\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\r\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 642
    const-string v22, "\r\n"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 645
    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 646
    .end local v12           #fileInputStream:Ljava/io/FileInputStream;
    .local v13, fileInputStream:Ljava/io/FileInputStream;
    const/4 v7, -0x1

    .line 647
    .local v7, bytesRead:I
    const/16 v2, 0x400

    .line 648
    .local v2, BUFFER_SIZE:I
    const/16 v22, 0x400

    :try_start_2
    move/from16 v0, v22

    new-array v6, v0, [B

    .line 649
    .local v6, buffer:[B
    :goto_1
    invoke-virtual {v13, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v7, v0, :cond_5

    .line 650
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v6, v0, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 651
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 670
    .end local v6           #buffer:[B
    :catchall_0
    move-exception v22

    move-object v9, v10

    .end local v10           #dos:Ljava/io/DataOutputStream;
    .restart local v9       #dos:Ljava/io/DataOutputStream;
    move-object v12, v13

    .line 671
    .end local v2           #BUFFER_SIZE:I
    .end local v3           #EXTRA_LEN:I
    .end local v4           #_url:Ljava/net/URL;
    .end local v7           #bytesRead:I
    .end local v13           #fileInputStream:Ljava/io/FileInputStream;
    .end local v15           #len:I
    .restart local v12       #fileInputStream:Ljava/io/FileInputStream;
    :goto_2
    if-eqz v12, :cond_2

    .line 672
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 674
    :cond_2
    if-eqz v9, :cond_3

    .line 675
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 677
    :cond_3
    if-eqz v18, :cond_4

    .line 678
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 682
    :cond_4
    :goto_3
    throw v22

    .line 654
    .end local v9           #dos:Ljava/io/DataOutputStream;
    .end local v12           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v2       #BUFFER_SIZE:I
    .restart local v3       #EXTRA_LEN:I
    .restart local v4       #_url:Ljava/net/URL;
    .restart local v6       #buffer:[B
    .restart local v7       #bytesRead:I
    .restart local v10       #dos:Ljava/io/DataOutputStream;
    .restart local v13       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v15       #len:I
    :cond_5
    :try_start_4
    const-string v22, "\r\n"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 655
    const-string v22, "--"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 656
    const-string v22, "*****"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 657
    const-string v22, "--"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 658
    const-string v22, "\r\n"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 661
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 662
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 663
    .local v20, sb:Ljava/lang/StringBuffer;
    new-instance v19, Ljava/io/BufferedReader;

    new-instance v22, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 665
    .end local v18           #rd:Ljava/io/BufferedReader;
    .local v19, rd:Ljava/io/BufferedReader;
    :goto_4
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .local v16, line:Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 666
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 670
    .end local v16           #line:Ljava/lang/String;
    :catchall_1
    move-exception v22

    move-object/from16 v18, v19

    .end local v19           #rd:Ljava/io/BufferedReader;
    .restart local v18       #rd:Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10           #dos:Ljava/io/DataOutputStream;
    .restart local v9       #dos:Ljava/io/DataOutputStream;
    move-object v12, v13

    .end local v13           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v12       #fileInputStream:Ljava/io/FileInputStream;
    goto :goto_2

    .line 668
    .end local v9           #dos:Ljava/io/DataOutputStream;
    .end local v12           #fileInputStream:Ljava/io/FileInputStream;
    .end local v18           #rd:Ljava/io/BufferedReader;
    .restart local v10       #dos:Ljava/io/DataOutputStream;
    .restart local v13       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v16       #line:Ljava/lang/String;
    .restart local v19       #rd:Ljava/io/BufferedReader;
    :cond_6
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v22

    .line 671
    if-eqz v13, :cond_7

    .line 672
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 674
    :cond_7
    if-eqz v10, :cond_8

    .line 675
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 677
    :cond_8
    if-eqz v19, :cond_0

    .line 678
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 680
    :catch_0
    move-exception v11

    .line 681
    .local v11, e:Ljava/io/IOException;
    const-string v23, "com.xiaomi.common.Network"

    const-string v24, "error while closing strean"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 680
    .end local v2           #BUFFER_SIZE:I
    .end local v3           #EXTRA_LEN:I
    .end local v4           #_url:Ljava/net/URL;
    .end local v6           #buffer:[B
    .end local v7           #bytesRead:I
    .end local v10           #dos:Ljava/io/DataOutputStream;
    .end local v11           #e:Ljava/io/IOException;
    .end local v13           #fileInputStream:Ljava/io/FileInputStream;
    .end local v15           #len:I
    .end local v16           #line:Ljava/lang/String;
    .end local v19           #rd:Ljava/io/BufferedReader;
    .end local v20           #sb:Ljava/lang/StringBuffer;
    .restart local v9       #dos:Ljava/io/DataOutputStream;
    .restart local v12       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v18       #rd:Ljava/io/BufferedReader;
    :catch_1
    move-exception v11

    .line 681
    .restart local v11       #e:Ljava/io/IOException;
    const-string v23, "com.xiaomi.common.Network"

    const-string v24, "error while closing strean"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 670
    .end local v11           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v22

    goto/16 :goto_2

    .end local v9           #dos:Ljava/io/DataOutputStream;
    .restart local v3       #EXTRA_LEN:I
    .restart local v4       #_url:Ljava/net/URL;
    .restart local v10       #dos:Ljava/io/DataOutputStream;
    .restart local v15       #len:I
    :catchall_3
    move-exception v22

    move-object v9, v10

    .end local v10           #dos:Ljava/io/DataOutputStream;
    .restart local v9       #dos:Ljava/io/DataOutputStream;
    goto/16 :goto_2
.end method
