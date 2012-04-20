.class public final Lcom/lbe/security/service/core/internal/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/Integer;

.field public static final b:[Ljava/lang/Integer;

.field public static final c:[Ljava/lang/Integer;

.field public static final d:[Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com.android.internal.telephony.ISms$Stub"

    const-string v1, "sendData"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/lbe/security/service/core/internal/aq;->b(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/lbe/security/service/core/internal/m;->a:[Ljava/lang/Integer;

    const-string v0, "com.android.internal.telephony.ISms$Stub"

    const-string v1, "sendText"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/lbe/security/service/core/internal/aq;->b(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/lbe/security/service/core/internal/m;->b:[Ljava/lang/Integer;

    const-string v0, "com.android.internal.telephony.ISms$Stub"

    const-string v1, "sendMultipartText"

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/lbe/security/service/core/internal/aq;->b(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/lbe/security/service/core/internal/m;->c:[Ljava/lang/Integer;

    const-string v0, "com.android.internal.telephony.ISms$Stub"

    const-string v1, "sendRawPdu"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/lbe/security/service/core/internal/aq;->b(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/lbe/security/service/core/internal/m;->d:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
