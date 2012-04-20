.class public final Lcom/lbe/security/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;

.field private static b:[Ljava/lang/String;

.field private static c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "libloader.so"

    aput-object v1, v0, v3

    const-string v1, "libservice.so"

    aput-object v1, v0, v4

    const-string v1, "libnativecache.so"

    aput-object v1, v0, v5

    sput-object v0, Lcom/lbe/security/a;->a:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "rmnet"

    aput-object v1, v0, v3

    const-string v1, "pdp"

    aput-object v1, v0, v4

    const-string v1, "ppp"

    aput-object v1, v0, v5

    const-string v1, "uwbr"

    aput-object v1, v0, v6

    const-string v1, "wimax"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "vsnet"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ccinet"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ccmni"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "qmi"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "svnet"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lbe/security/a;->b:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "tiwlan"

    aput-object v1, v0, v3

    const-string v1, "wlan"

    aput-object v1, v0, v4

    const-string v1, "eth"

    aput-object v1, v0, v5

    const-string v1, "ra"

    aput-object v1, v0, v6

    const-string v1, "mlan"

    aput-object v1, v0, v7

    sput-object v0, Lcom/lbe/security/a;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
