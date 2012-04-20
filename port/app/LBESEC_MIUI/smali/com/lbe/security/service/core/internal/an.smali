.class public final Lcom/lbe/security/service/core/internal/an;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com.android.internal.telephony.IPhoneSubInfo$Stub"

    const-string v1, "TRANSACTION_getDeviceId"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/lbe/security/service/core/internal/aq;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lbe/security/service/core/internal/an;->a:I

    const-string v0, "com.android.internal.telephony.IPhoneSubInfo$Stub"

    const-string v1, "TRANSACTION_getDeviceSvn"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/lbe/security/service/core/internal/aq;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lbe/security/service/core/internal/an;->b:I

    const-string v0, "com.android.internal.telephony.IPhoneSubInfo$Stub"

    const-string v1, "TRANSACTION_getSubscriberId"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/lbe/security/service/core/internal/aq;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lbe/security/service/core/internal/an;->c:I

    const-string v0, "com.android.internal.telephony.IPhoneSubInfo$Stub"

    const-string v1, "TRANSACTION_getIccSerialNumber"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/lbe/security/service/core/internal/aq;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lbe/security/service/core/internal/an;->d:I

    const-string v0, "com.android.internal.telephony.IPhoneSubInfo$Stub"

    const-string v1, "TRANSACTION_getLine1Number"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/lbe/security/service/core/internal/aq;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lbe/security/service/core/internal/an;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
