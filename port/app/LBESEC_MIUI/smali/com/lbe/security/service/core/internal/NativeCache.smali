.class public Lcom/lbe/security/service/core/internal/NativeCache;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "nativecache"

    invoke-static {v0}, Lcom/lbe/security/service/a/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(III)I
    .locals 6

    const/4 v0, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x2

    const/16 v5, 0x10

    if-ne p2, v5, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/lbe/security/service/core/internal/NativeCache;->getCachedAction(III)I

    move-result v0

    if-ne v0, v1, :cond_8

    :goto_1
    return v1

    :cond_1
    const/16 v5, 0x8

    if-ne p2, v5, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    if-ne p2, v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    const/16 v5, 0x20

    if-ne p2, v5, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const/16 v5, 0x40

    if-eq p2, v5, :cond_0

    const/16 v0, 0x400

    if-ne p2, v0, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    const/16 v0, 0x800

    if-ne p2, v0, :cond_6

    const/4 v0, 0x6

    goto :goto_0

    :cond_6
    if-ne p2, v1, :cond_7

    const/4 v0, 0x7

    goto :goto_0

    :cond_7
    move v1, v4

    goto :goto_1

    :cond_8
    if-ne v0, v2, :cond_9

    move v1, v3

    goto :goto_1

    :cond_9
    move v1, v4

    goto :goto_1
.end method

.method public static a(IIII)V
    .locals 4

    const/4 v2, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x2

    const/16 v3, 0x10

    if-ne p2, v3, :cond_2

    move v2, v0

    :cond_0
    :goto_0
    if-ne p3, v0, :cond_8

    :goto_1
    invoke-static {p0, p1, v2, v0}, Lcom/lbe/security/service/core/internal/NativeCache;->setCachedAction(IIII)V

    :cond_1
    return-void

    :cond_2
    const/16 v3, 0x8

    if-ne p2, v3, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    if-ne p2, v2, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/16 v3, 0x20

    if-ne p2, v3, :cond_5

    const/4 v2, 0x3

    goto :goto_0

    :cond_5
    const/16 v3, 0x40

    if-eq p2, v3, :cond_0

    const/16 v2, 0x400

    if-ne p2, v2, :cond_6

    const/4 v2, 0x5

    goto :goto_0

    :cond_6
    const/16 v2, 0x800

    if-ne p2, v2, :cond_7

    const/4 v2, 0x6

    goto :goto_0

    :cond_7
    if-ne p2, v0, :cond_1

    const/4 v2, 0x7

    goto :goto_0

    :cond_8
    if-nez p3, :cond_1

    move v0, v1

    goto :goto_1
.end method

.method private static synchronized native declared-synchronized getCachedAction(III)I
.end method

.method public static synchronized native declared-synchronized getTrafficStats(Ljava/lang/String;)J
.end method

.method public static synchronized native declared-synchronized getUid(II)I
.end method

.method public static synchronized native declared-synchronized resetUid(II)V
.end method

.method private static synchronized native declared-synchronized setCachedAction(IIII)V
.end method

.method public static synchronized native declared-synchronized setUid(II)V
.end method

.method public static synchronized native declared-synchronized validateRSAKey(Ljava/lang/String;II)I
.end method
