.class public final Lcom/lbe/security/service/core/internal/ah;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.location.ILocationManager$Stub"

    const-string v1, "TRANSACTION_requestLocationUpdates"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/lbe/security/service/core/internal/aq;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lbe/security/service/core/internal/ah;->a:I

    const-string v0, "android.location.ILocationManager$Stub"

    const-string v1, "TRANSACTION_requestLocationUpdatesPI"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/lbe/security/service/core/internal/aq;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lbe/security/service/core/internal/ah;->b:I

    const-string v0, "android.location.ILocationManager$Stub"

    const-string v1, "TRANSACTION_getLastKnownLocation"

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lcom/lbe/security/service/core/internal/aq;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lbe/security/service/core/internal/ah;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
