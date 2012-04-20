.class public Lcom/android/updater/utils/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 12
    .parameter "updateFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 41
    const/4 v6, 0x0

    .line 43
    .local v6, output:Ljava/lang/String;
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 44
    .local v2, digest:Ljava/security/MessageDigest;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 46
    .local v4, is:Ljava/io/InputStream;
    const/16 v8, 0x2000

    new-array v1, v8, [B

    .line 47
    .local v1, buffer:[B
    const/4 v7, 0x0

    .line 48
    .local v7, read:I
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_0

    .line 49
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v8, v7}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 57
    .end local v1           #buffer:[B
    .end local v2           #digest:Ljava/security/MessageDigest;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v7           #read:I
    :catch_0
    move-exception v8

    .line 62
    :goto_1
    return-object v6

    .line 51
    .restart local v1       #buffer:[B
    .restart local v2       #digest:Ljava/security/MessageDigest;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v7       #read:I
    :cond_0
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 52
    .local v5, md5sum:[B
    new-instance v0, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-direct {v0, v8, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 54
    .local v0, bigInt:Ljava/math/BigInteger;
    const-string v8, "%32s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/16 v11, 0x10

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    const/16 v10, 0x30

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 56
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 58
    .end local v0           #bigInt:Ljava/math/BigInteger;
    .end local v1           #buffer:[B
    .end local v2           #digest:Ljava/security/MessageDigest;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #md5sum:[B
    .end local v7           #read:I
    :catch_1
    move-exception v8

    goto :goto_1

    .line 59
    :catch_2
    move-exception v3

    .line 60
    .local v3, e:Ljava/io/IOException;
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Unable to process file for MD5"

    invoke-direct {v8, v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method public static checkMD5(Ljava/lang/String;Ljava/io/File;)Z
    .locals 3
    .parameter "md5"
    .parameter "updateFile"

    .prologue
    .line 23
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 37
    :cond_1
    :goto_0
    return v1

    .line 27
    :cond_2
    const/4 v1, 0x0

    .line 29
    .local v1, success:Z
    :try_start_0
    invoke-static {p1}, Lcom/android/updater/utils/MD5;->calculateMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, calculatedDigest:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 33
    .end local v0           #calculatedDigest:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getMd5Digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "pInput"

    .prologue
    .line 90
    const-string v0, ""

    .line 92
    .local v0, hashString:Ljava/lang/String;
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 93
    .local v1, lDigest:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 94
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 95
    .local v2, lHashInt:Ljava/math/BigInteger;
    const-string v3, "%1$032X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 99
    .end local v1           #lDigest:Ljava/security/MessageDigest;
    .end local v2           #lHashInt:Ljava/math/BigInteger;
    :goto_0
    return-object v0

    .line 96
    :catch_0
    move-exception v3

    goto :goto_0
.end method
