.class public final Lcom/lbe/security/service/core/internal/ap;
.super Ljava/lang/Object;


# static fields
.field public static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com.android.internal.telephony.ITelephonyRegistry$Stub"

    const-string v1, "TRANSACTION_listen"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/lbe/security/service/core/internal/aq;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lbe/security/service/core/internal/ap;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
