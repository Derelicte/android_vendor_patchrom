.class public final Lcom/lbe/security/service/core/internal/t;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com.android.internal.telephony.ITelephony$Stub"

    const-string v1, "TRANSACTION_call"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/lbe/security/service/core/internal/aq;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lbe/security/service/core/internal/t;->a:I

    const-string v0, "com.android.internal.telephony.ITelephony$Stub"

    const-string v1, "TRANSACTION_dial"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/lbe/security/service/core/internal/aq;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lbe/security/service/core/internal/t;->b:I

    const-string v0, "com.android.internal.telephony.ITelephony$Stub"

    const-string v1, "TRANSACTION_getCellLocation"

    const/16 v2, 0x1a

    invoke-static {v0, v1, v2}, Lcom/lbe/security/service/core/internal/aq;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lbe/security/service/core/internal/t;->c:I

    const-string v0, "com.android.internal.telephony.ITelephony$Stub"

    const-string v1, "TRANSACTION_getNeighboringCellInfo"

    const/16 v2, 0x1b

    invoke-static {v0, v1, v2}, Lcom/lbe/security/service/core/internal/aq;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lbe/security/service/core/internal/t;->d:I

    const-string v0, "com.android.internal.telephony.ITelephony$Stub"

    const-string v1, "TRANSACTION_getCallState"

    const/16 v2, 0x1c

    invoke-static {v0, v1, v2}, Lcom/lbe/security/service/core/internal/aq;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lbe/security/service/core/internal/t;->e:I

    const-string v0, "com.android.internal.telephony.ITelephony$Stub"

    const-string v1, "TRANSACTION_endCall"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/lbe/security/service/core/internal/aq;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lbe/security/service/core/internal/t;->f:I

    const-string v0, "com.android.internal.telephony.ITelephony$Stub"

    const-string v1, "TRANSACTION_answerRingingCall"

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/lbe/security/service/core/internal/aq;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lbe/security/service/core/internal/t;->g:I

    const-string v0, "com.android.internal.telephony.ITelephony$Stub"

    const-string v1, "TRANSACTION_silenceRinger"

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/lbe/security/service/core/internal/aq;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lbe/security/service/core/internal/t;->h:I

    const-string v0, "com.android.internal.telephony.ITelephony$Stub"

    const-string v1, "TRANSACTION_cancelMissedCallsNotification"

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Lcom/lbe/security/service/core/internal/aq;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lbe/security/service/core/internal/t;->i:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
