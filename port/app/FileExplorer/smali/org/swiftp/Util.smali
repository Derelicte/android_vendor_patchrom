.class public abstract Lorg/swiftp/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftp/Util$MediaScannerNotifier;
    }
.end annotation


# static fields
.field static myLog:Lorg/swiftp/MyLog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lorg/swiftp/MyLog;

    const-class v1, Lorg/swiftp/Util;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/swiftp/MyLog;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/swiftp/Util;->myLog:Lorg/swiftp/MyLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    return-void
.end method

.method static byteArrayToJson([B)Lorg/json/JSONObject;
    .locals 4
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 118
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-object v1

    .line 119
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static byteOfInt(II)B
    .locals 2
    .parameter "value"
    .parameter "which"

    .prologue
    .line 61
    mul-int/lit8 v0, p1, 0x8

    .line 62
    .local v0, shift:I
    shr-int v1, p0, v0

    int-to-byte v1, v1

    return v1
.end method

.method public static concatStrArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "a1"
    .parameter "a2"

    .prologue
    const/4 v3, 0x0

    .line 163
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [Ljava/lang/String;

    .line 164
    .local v0, retArr:[Ljava/lang/String;
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    return-object v0
.end method

.method public static deletedFileNotify(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 135
    sget-object v0, Lorg/swiftp/Util;->myLog:Lorg/swiftp/MyLog;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying others about deleted file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 136
    new-instance v0, Lorg/swiftp/Util$MediaScannerNotifier;

    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/swiftp/Util$MediaScannerNotifier;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method static getAndroidId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 42
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 50
    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, packageName:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-object v2

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lorg/swiftp/Util;->myLog:Lorg/swiftp/MyLog;

    const/4 v3, 0x6

    const-string v4, "NameNotFoundException looking up SwiFTP version"

    invoke-virtual {v2, v3, v4}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 55
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static intToInet(I)Ljava/net/InetAddress;
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x4

    .line 82
    new-array v0, v4, [B

    .line 83
    .local v0, bytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 84
    invoke-static {p0, v2}, Lorg/swiftp/Util;->byteOfInt(II)B

    move-result v3

    aput-byte v3, v0, v2

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 90
    :goto_1
    return-object v3

    .line 88
    :catch_0
    move-exception v1

    .line 90
    .local v1, e:Ljava/net/UnknownHostException;
    const/4 v3, 0x0

    goto :goto_1
.end method

.method static jsonToByteArray(Lorg/json/JSONObject;)[B
    .locals 3
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 108
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 110
    :goto_0
    return-object v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newFileNotify(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 127
    sget-object v0, Lorg/swiftp/Util;->myLog:Lorg/swiftp/MyLog;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying others about new file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 128
    new-instance v0, Lorg/swiftp/Util$MediaScannerNotifier;

    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/swiftp/Util$MediaScannerNotifier;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public static sleepIgnoreInterupt(J)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 171
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    goto :goto_0
.end method
