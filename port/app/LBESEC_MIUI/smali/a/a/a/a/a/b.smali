.class public final La/a/a/a/a/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I[B)La/a/a/a/a/c;
    .locals 2

    and-int/lit16 v0, p0, 0xff

    int-to-byte v1, v0

    sparse-switch v1, :sswitch_data_0

    new-instance v0, La/a/a/a/a/c;

    invoke-direct {v0, v1, p1}, La/a/a/a/a/c;-><init>(B[B)V

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v0, La/a/a/a/a/a;

    invoke-direct {v0, v1, p1}, La/a/a/a/a/a;-><init>(B[B)V

    goto :goto_0

    :sswitch_1
    new-instance v0, La/a/a/a/a/d;

    invoke-direct {v0, v1, p1}, La/a/a/a/a/d;-><init>(B[B)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method
