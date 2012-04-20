.class public final Lcom/lbe/security/service/b/a;
.super Ljava/lang/Object;


# static fields
.field private static a:J

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v2, 0x0

    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x7d0

    const/4 v3, 0x1

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/lbe/security/service/b/a;->a:J

    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/lbe/security/service/b/a;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 4

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/lbe/security/service/b/a;->a:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/lbe/security/service/b/a;->b:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
