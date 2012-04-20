.class public final La/a/a/a/d;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()I
    .locals 2

    iget-object v0, p0, La/a/a/a/d;->b:[B

    iget v1, p0, La/a/a/a/d;->a:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, La/a/a/a/d;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/a/a/a/d;->a:I

    return v0
.end method

.method private a(II)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_1

    div-int/lit8 v2, p1, 0x2

    rem-int/lit8 v3, p1, 0x2

    if-ne v3, v0, :cond_0

    :goto_0
    add-int/2addr v0, v2

    new-array v2, v0, [B

    iget-object v3, p0, La/a/a/a/d;->b:[B

    iget v4, p0, La/a/a/a/d;->a:I

    invoke-static {v3, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, La/a/a/a/d;->a:I

    add-int/2addr v0, v3

    iput v0, p0, La/a/a/a/d;->a:I

    invoke-static {p2}, La/a/a/a/a;->a(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-static {v2}, La/a/a/a/a;->b([B)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_0
    invoke-static {v2}, La/a/a/a/a;->a([B)Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v2, p1, 0x4

    div-int/lit8 v2, v2, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_0
    .end packed-switch
.end method

.method private a(La/a/a/a/g;)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, La/a/a/a/d;->a()I

    move-result v0

    invoke-virtual {p1, v0}, La/a/a/a/g;->j(I)V

    iget-object v0, p0, La/a/a/a/d;->b:[B

    array-length v0, v0

    iget v1, p0, La/a/a/a/d;->a:I

    sub-int/2addr v0, v1

    new-array v1, v0, [B

    iget-object v2, p0, La/a/a/a/d;->b:[B

    iget v3, p0, La/a/a/a/d;->a:I

    invoke-static {v2, v3, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1, v1}, La/a/a/a/g;->a([B)V

    invoke-virtual {p1}, La/a/a/a/g;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, La/a/a/a/d;->a()I

    move-result v0

    iget v1, p0, La/a/a/a/d;->a:I

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, La/a/a/a/d;->a:I

    if-lt v1, v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, La/a/a/a/d;->a()I

    move-result v1

    invoke-direct {p0}, La/a/a/a/d;->a()I

    move-result v2

    new-array v3, v2, [B

    iget-object v4, p0, La/a/a/a/d;->b:[B

    iget v5, p0, La/a/a/a/d;->a:I

    invoke-static {v4, v5, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v3}, La/a/a/a/a/b;->a(I[B)La/a/a/a/a/c;

    move-result-object v1

    invoke-virtual {p1, v1}, La/a/a/a/g;->a(La/a/a/a/a/c;)V

    iget v1, p0, La/a/a/a/d;->a:I

    add-int/2addr v1, v2

    iput v1, p0, La/a/a/a/d;->a:I

    iget v1, p0, La/a/a/a/d;->a:I

    if-le v1, v0, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UDH is shorter than expected endUdh="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, La/a/a/a/d;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private b()I
    .locals 2

    invoke-direct {p0}, La/a/a/a/d;->a()I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, La/a/a/a/a;->d(I)B

    move-result v0

    ushr-int/lit8 v1, v0, 0x4

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x0

    and-int/lit8 v0, v0, 0xf

    add-int/2addr v0, v1

    return v0
.end method

.method private c()Ljava/util/Calendar;
    .locals 12

    const/16 v11, 0xa

    const/4 v1, 0x1

    invoke-direct {p0}, La/a/a/a/d;->b()I

    move-result v2

    invoke-direct {p0}, La/a/a/a/d;->b()I

    move-result v3

    invoke-direct {p0}, La/a/a/a/d;->b()I

    move-result v4

    invoke-direct {p0}, La/a/a/a/d;->b()I

    move-result v5

    invoke-direct {p0}, La/a/a/a/d;->b()I

    move-result v6

    invoke-direct {p0}, La/a/a/a/d;->b()I

    move-result v7

    invoke-direct {p0}, La/a/a/a/d;->a()I

    move-result v8

    and-int/lit8 v0, v8, 0x8

    const/16 v9, 0x8

    if-ne v0, v9, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v8}, La/a/a/a/a;->d(I)B

    move-result v8

    and-int/lit8 v8, v8, 0x7f

    if-eqz v0, :cond_2

    ushr-int/lit8 v0, v8, 0x4

    and-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x0

    and-int/lit8 v8, v8, 0xf

    add-int/2addr v0, v8

    mul-int/lit8 v0, v0, 0xf

    div-int/lit8 v8, v0, 0x3c

    rem-int/lit8 v9, v0, 0x3c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "GMT-"

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-ge v9, v11, :cond_1

    const-string v0, "0"

    :goto_1
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    add-int/lit16 v2, v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v7}, Ljava/util/Calendar;->set(II)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    ushr-int/lit8 v0, v8, 0x4

    and-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x0

    and-int/lit8 v8, v8, 0xf

    add-int/2addr v0, v8

    mul-int/lit8 v0, v0, 0xf

    div-int/lit8 v8, v0, 0x3c

    rem-int/lit8 v9, v0, 0x3c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "GMT+"

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-ge v9, v11, :cond_3

    const-string v0, "0"

    :goto_3
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3
.end method


# virtual methods
.method public final a(Ljava/lang/String;)La/a/a/a/g;
    .locals 7

    const/16 v6, 0xa7

    const/16 v5, 0x8f

    const/4 v2, 0x0

    invoke-static {p1}, La/a/a/a/a;->b(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, La/a/a/a/d;->b:[B

    iput v2, p0, La/a/a/a/d;->a:I

    invoke-direct {p0}, La/a/a/a/d;->a()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, La/a/a/a/d;->a()I

    move-result v3

    add-int/lit8 v1, v0, -0x1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1, v3}, La/a/a/a/d;->a(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, La/a/a/a/d;->a()I

    move-result v1

    invoke-static {v1}, La/a/a/a/c;->a(I)La/a/a/a/g;

    move-result-object v1

    invoke-virtual {v1, v3}, La/a/a/a/g;->d(I)V

    invoke-virtual {v1, v4}, La/a/a/a/g;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, La/a/a/a/g;->c(I)V

    :goto_0
    invoke-virtual {v1, p1}, La/a/a/a/g;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, La/a/a/a/g;->e()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-object v1

    :cond_0
    invoke-direct {p0}, La/a/a/a/d;->a()I

    move-result v0

    invoke-static {v0}, La/a/a/a/c;->a(I)La/a/a/a/g;

    move-result-object v1

    goto :goto_0

    :pswitch_0
    move-object v0, v1

    check-cast v0, La/a/a/a/f;

    invoke-direct {p0}, La/a/a/a/d;->a()I

    move-result v2

    invoke-direct {p0}, La/a/a/a/d;->a()I

    move-result v3

    invoke-direct {p0, v2, v3}, La/a/a/a/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3}, La/a/a/a/f;->i(I)V

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, La/a/a/a/f;->b(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, La/a/a/a/d;->a()I

    move-result v2

    invoke-virtual {v0, v2}, La/a/a/a/f;->g(I)V

    invoke-direct {p0}, La/a/a/a/d;->a()I

    move-result v2

    invoke-virtual {v0, v2}, La/a/a/a/f;->h(I)V

    invoke-direct {p0}, La/a/a/a/d;->c()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v2}, La/a/a/a/f;->a(Ljava/util/Calendar;)V

    invoke-direct {p0, v0}, La/a/a/a/d;->a(La/a/a/a/g;)V

    goto :goto_1

    :pswitch_1
    move-object v0, v1

    check-cast v0, La/a/a/a/b;

    invoke-direct {p0}, La/a/a/a/d;->a()I

    move-result v3

    invoke-virtual {v0, v3}, La/a/a/a/b;->a(I)V

    invoke-direct {p0}, La/a/a/a/d;->a()I

    move-result v3

    invoke-direct {p0}, La/a/a/a/d;->a()I

    move-result v4

    invoke-direct {p0, v3, v4}, La/a/a/a/d;->a(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4}, La/a/a/a/b;->i(I)V

    invoke-virtual {v0, v3}, La/a/a/a/b;->b(Ljava/lang/String;)V

    invoke-direct {p0}, La/a/a/a/d;->a()I

    move-result v3

    invoke-virtual {v0, v3}, La/a/a/a/b;->g(I)V

    invoke-direct {p0}, La/a/a/a/d;->a()I

    move-result v3

    invoke-virtual {v0, v3}, La/a/a/a/b;->h(I)V

    invoke-virtual {v0}, La/a/a/a/b;->a()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_2
    :sswitch_0
    invoke-direct {p0, v0}, La/a/a/a/d;->a(La/a/a/a/g;)V

    goto :goto_1

    :sswitch_1
    invoke-direct {p0}, La/a/a/a/d;->a()I

    move-result v3

    if-lez v3, :cond_3

    if-gt v3, v5, :cond_3

    add-int/lit8 v2, v3, 0x1

    mul-int/lit8 v2, v2, 0x5

    :cond_2
    :goto_3
    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0, v2}, La/a/a/a/b;->b(I)V

    goto :goto_2

    :cond_3
    if-le v3, v5, :cond_4

    if-gt v3, v6, :cond_4

    add-int/lit16 v2, v3, -0x8f

    mul-int/lit8 v2, v2, 0x1e

    add-int/lit16 v2, v2, 0x2d0

    goto :goto_3

    :cond_4
    if-le v3, v6, :cond_5

    const/16 v4, 0xc4

    if-gt v3, v4, :cond_5

    add-int/lit16 v2, v3, -0xa6

    mul-int/lit8 v2, v2, 0x18

    mul-int/lit8 v2, v2, 0x3c

    goto :goto_3

    :cond_5
    const/16 v4, 0xc5

    if-le v3, v4, :cond_2

    const/16 v4, 0xff

    if-gt v3, v4, :cond_2

    add-int/lit16 v2, v3, -0xc0

    mul-int/lit8 v2, v2, 0x7

    mul-int/lit8 v2, v2, 0x18

    mul-int/lit8 v2, v2, 0x3c

    goto :goto_3

    :sswitch_2
    invoke-direct {p0}, La/a/a/a/d;->c()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v2}, La/a/a/a/b;->a(Ljava/util/Calendar;)V

    goto :goto_2

    :pswitch_2
    move-object v0, v1

    check-cast v0, La/a/a/a/e;

    invoke-direct {p0}, La/a/a/a/d;->a()I

    move-result v2

    invoke-virtual {v0, v2}, La/a/a/a/e;->a(I)V

    invoke-direct {p0}, La/a/a/a/d;->a()I

    move-result v2

    invoke-direct {p0}, La/a/a/a/d;->a()I

    move-result v3

    invoke-direct {p0, v2, v3}, La/a/a/a/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3}, La/a/a/a/e;->i(I)V

    invoke-virtual {v0, v2}, La/a/a/a/e;->b(Ljava/lang/String;)V

    invoke-direct {p0}, La/a/a/a/d;->c()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v2}, La/a/a/a/e;->a(Ljava/util/Calendar;)V

    invoke-direct {p0}, La/a/a/a/d;->c()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v2}, La/a/a/a/e;->b(Ljava/util/Calendar;)V

    invoke-direct {p0}, La/a/a/a/d;->a()I

    move-result v2

    invoke-virtual {v0, v2}, La/a/a/a/e;->b(I)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10 -> :sswitch_1
        0x18 -> :sswitch_2
    .end sparse-switch
.end method
