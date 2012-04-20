.class public abstract Lcom/android/exchange/utility/UriCodec;
.super Ljava/lang/Object;
.source "UriCodec.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    .locals 6
    .parameter "builder"
    .parameter "s"
    .parameter "charset"
    .parameter "isPartiallyEncoded"

    .prologue
    const/16 v5, 0x25

    const/4 v4, -0x1

    .line 98
    if-nez p2, :cond_0

    .line 99
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 102
    :cond_0
    const/4 v1, -0x1

    .line 103
    .local v1, escapeStart:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 104
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 105
    .local v0, c:C
    const/16 v3, 0x61

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7a

    if-le v0, v3, :cond_4

    :cond_1
    const/16 v3, 0x41

    if-lt v0, v3, :cond_2

    const/16 v3, 0x5a

    if-le v0, v3, :cond_4

    :cond_2
    const/16 v3, 0x30

    if-lt v0, v3, :cond_3

    const/16 v3, 0x39

    if-le v0, v3, :cond_4

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/exchange/utility/UriCodec;->isRetained(C)Z

    move-result v3

    if-nez v3, :cond_4

    if-ne v0, v5, :cond_9

    if-eqz p4, :cond_9

    .line 110
    :cond_4
    if-eq v1, v4, :cond_5

    .line 111
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, p3}, Lcom/android/exchange/utility/UriCodec;->appendHex(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 112
    const/4 v1, -0x1

    .line 114
    :cond_5
    if-ne v0, v5, :cond_7

    if-eqz p4, :cond_7

    .line 116
    add-int/lit8 v3, v2, 0x3

    invoke-virtual {p1, p2, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 117
    add-int/lit8 v2, v2, 0x2

    .line 103
    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    :cond_7
    const/16 v3, 0x20

    if-ne v0, v3, :cond_8

    .line 119
    const/16 v3, 0x2b

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 121
    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 123
    :cond_9
    if-ne v1, v4, :cond_6

    .line 124
    move v1, v2

    goto :goto_1

    .line 127
    .end local v0           #c:C
    :cond_a
    if-eq v1, v4, :cond_b

    .line 128
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, p3}, Lcom/android/exchange/utility/UriCodec;->appendHex(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 130
    :cond_b
    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuilder;B)V
    .locals 1
    .parameter "sb"
    .parameter "b"

    .prologue
    .line 213
    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 4
    .parameter "builder"
    .parameter "s"
    .parameter "charset"

    .prologue
    .line 207
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 208
    .local v1, b:B
    invoke-static {p0, v1}, Lcom/android/exchange/utility/UriCodec;->appendHex(Ljava/lang/StringBuilder;B)V

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    .end local v1           #b:B
    :cond_0
    return-void
.end method


# virtual methods
.method public final appendPartiallyEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .parameter "builder"
    .parameter "s"

    .prologue
    .line 144
    sget-object v0, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/utility/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    .line 145
    return-void
.end method

.method protected abstract isRetained(C)Z
.end method
