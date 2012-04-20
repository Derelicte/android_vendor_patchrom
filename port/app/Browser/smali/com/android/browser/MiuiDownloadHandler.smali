.class public Lcom/android/browser/MiuiDownloadHandler;
.super Lcom/android/browser/DownloadHandler;
.source "MiuiDownloadHandler.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/android/browser/MiuiDownloadHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/browser/MiuiDownloadHandler;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/browser/DownloadHandler;-><init>()V

    return-void
.end method

.method private static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "path"

    .prologue
    const/16 v9, 0x5d

    const/16 v8, 0x5b

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 100
    .local v2, chars:[C
    const/4 v5, 0x0

    .line 101
    .local v5, needed:Z
    move-object v0, v2

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-char v1, v0, v3

    .line 102
    .local v1, c:C
    if-eq v1, v8, :cond_0

    if-ne v1, v9, :cond_2

    .line 103
    :cond_0
    const/4 v5, 0x1

    .line 107
    .end local v1           #c:C
    :cond_1
    if-nez v5, :cond_3

    .line 121
    .end local p0
    :goto_1
    return-object p0

    .line 101
    .restart local v1       #c:C
    .restart local p0
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    .end local v1           #c:C
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .local v6, sb:Ljava/lang/StringBuilder;
    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_6

    aget-char v1, v0, v3

    .line 113
    .restart local v1       #c:C
    if-eq v1, v8, :cond_4

    if-ne v1, v9, :cond_5

    .line 114
    :cond_4
    const/16 v7, 0x25

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 117
    :cond_5
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 121
    .end local v1           #c:C
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method static guessImageFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "url"
    .parameter "contentDisposition"
    .parameter "mimetype"

    .prologue
    .line 38
    invoke-static {p0, p1, p2}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 39
    .local v10, ret:Ljava/lang/String;
    const-string v11, ".bin"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 65
    .end local v10           #ret:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v10

    .line 43
    .restart local v10       #ret:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    .line 44
    .local v5, filename:Ljava/lang/String;
    const/4 v3, 0x0

    .line 46
    .local v3, extension:Ljava/lang/String;
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, durl:Ljava/lang/String;
    const/4 v7, -0x1

    .line 48
    .local v7, index:I
    const/4 v11, 0x5

    new-array v4, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, ".jpg"

    aput-object v12, v4, v11

    const/4 v11, 0x1

    const-string v12, ".jpeg"

    aput-object v12, v4, v11

    const/4 v11, 0x2

    const-string v12, ".gif"

    aput-object v12, v4, v11

    const/4 v11, 0x3

    const-string v12, ".png"

    aput-object v12, v4, v11

    const/4 v11, 0x4

    const-string v12, ".bmp"

    aput-object v12, v4, v11

    .line 49
    .local v4, exts:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v9, v0

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v9, :cond_2

    aget-object v2, v0, v6

    .line 50
    .local v2, ext:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 51
    const/4 v11, -0x1

    if-eq v7, v11, :cond_4

    .line 52
    move-object v3, v2

    .line 56
    .end local v2           #ext:Ljava/lang/String;
    :cond_2
    const/4 v11, -0x1

    if-eq v7, v11, :cond_3

    if-eqz v3, :cond_3

    .line 57
    const/4 v11, 0x0

    invoke-virtual {v1, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 58
    .local v8, index0:I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_3

    .line 59
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v1, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 62
    .end local v8           #index0:I
    :cond_3
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 63
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 49
    .restart local v2       #ext:Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method static onDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 14
    .parameter "activity"
    .parameter "url"
    .parameter "filename"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "privateBrowsing"

    .prologue
    .line 137
    invoke-static {}, Lmiui/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v10

    .line 138
    .local v10, status:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 143
    const-string v1, "shared"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    const v1, 0x7f0c010e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 145
    .local v9, msg:Ljava/lang/String;
    const v11, 0x7f0c010d

    .line 151
    .local v11, title:I
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0012

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 215
    .end local v9           #msg:Ljava/lang/String;
    .end local v11           #title:I
    :cond_0
    :goto_1
    return-void

    .line 147
    :cond_1
    const v1, 0x7f0c010c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v2, v6

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 148
    .restart local v9       #msg:Ljava/lang/String;
    const v11, 0x7f0c010b

    .restart local v11       #title:I
    goto :goto_0

    .line 164
    .end local v9           #msg:Ljava/lang/String;
    .end local v11           #title:I
    :cond_2
    :try_start_0
    new-instance v13, Landroid/net/WebAddress;

    invoke-direct {v13, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 165
    .local v13, webAddress:Landroid/net/WebAddress;
    invoke-virtual {v13}, Landroid/net/WebAddress;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/browser/MiuiDownloadHandler;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/net/WebAddress;->setPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    invoke-virtual {v13}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, addressString:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 177
    .local v12, uri:Landroid/net/Uri;
    :try_start_1
    new-instance v3, Landroid/app/DownloadManager$Request;

    invoke-direct {v3, v12}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    .local v3, request:Landroid/app/DownloadManager$Request;
    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 185
    sget-object v1, Lmiui/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v3, v1, v0}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 188
    invoke-virtual {v3}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 189
    invoke-virtual {v13}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 192
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    move/from16 v0, p6

    invoke-virtual {v1, p1, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 193
    .local v5, cookies:Ljava/lang/String;
    const-string v1, "cookie"

    invoke-virtual {v3, v1, v5}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 194
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 196
    if-nez p5, :cond_3

    .line 197
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    new-instance v1, Lcom/android/browser/FetchUrlMimeType;

    move-object v2, p0

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/browser/FetchUrlMimeType;-><init>(Landroid/content/Context;Landroid/app/DownloadManager$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/browser/FetchUrlMimeType;->start()V

    .line 213
    :goto_2
    const v1, 0x7f0c0110

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 166
    .end local v3           #request:Landroid/app/DownloadManager$Request;
    .end local v4           #addressString:Ljava/lang/String;
    .end local v5           #cookies:Ljava/lang/String;
    .end local v12           #uri:Landroid/net/Uri;
    .end local v13           #webAddress:Landroid/net/WebAddress;
    :catch_0
    move-exception v7

    .line 169
    .local v7, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/browser/MiuiDownloadHandler;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception trying to parse url:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 178
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v4       #addressString:Ljava/lang/String;
    .restart local v12       #uri:Landroid/net/Uri;
    .restart local v13       #webAddress:Landroid/net/WebAddress;
    :catch_1
    move-exception v7

    .line 179
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const v1, 0x7f0c010f

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 205
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #request:Landroid/app/DownloadManager$Request;
    .restart local v5       #cookies:Ljava/lang/String;
    :cond_3
    const-string v1, "download"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/DownloadManager;

    .line 207
    .local v8, manager:Landroid/app/DownloadManager;
    new-instance v1, Lcom/android/browser/MiuiDownloadHandler$1;

    const-string v2, "Browser download"

    invoke-direct {v1, v2, v8, v3}, Lcom/android/browser/MiuiDownloadHandler$1;-><init>(Ljava/lang/String;Landroid/app/DownloadManager;Landroid/app/DownloadManager$Request;)V

    invoke-virtual {v1}, Lcom/android/browser/MiuiDownloadHandler$1;->start()V

    goto :goto_2
.end method

.method static onDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter "activity"
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "privateBrowsing"

    .prologue
    .line 89
    invoke-static {p1, p3, p4}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, filename:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 90
    invoke-static/range {v0 .. v6}, Lcom/android/browser/MiuiDownloadHandler;->onDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 92
    return-void
.end method

.method static onImageDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter "activity"
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "privateBrowsing"

    .prologue
    .line 81
    invoke-static {p1, p3, p4}, Lcom/android/browser/MiuiDownloadHandler;->guessImageFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, filename:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 82
    invoke-static/range {v0 .. v6}, Lcom/android/browser/MiuiDownloadHandler;->onDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    return-void
.end method
