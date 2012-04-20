.class public final Lcom/lbe/security/service/core/internal/ad;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lbe/security/service/core/internal/ad;->a:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/OpCodeMap;

    const-string v2, "TRANSACTION_call"

    sget v3, Lcom/lbe/security/service/core/internal/t;->a:I

    const/16 v4, 0xe

    invoke-direct {v1, v2, v3, v4}, Lcom/lbe/security/service/core/internal/OpCodeMap;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/internal/ad;->a:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/OpCodeMap;

    const-string v2, "TRANSACTION_call"

    sget v3, Lcom/lbe/security/service/core/internal/t;->b:I

    const/16 v4, 0xf

    invoke-direct {v1, v2, v3, v4}, Lcom/lbe/security/service/core/internal/OpCodeMap;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/internal/ad;->a:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/OpCodeMap;

    const-string v2, "TRANSACTION_getNeighboringCellInfo"

    sget v3, Lcom/lbe/security/service/core/internal/t;->c:I

    const/16 v4, 0x10

    invoke-direct {v1, v2, v3, v4}, Lcom/lbe/security/service/core/internal/OpCodeMap;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/internal/ad;->a:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/OpCodeMap;

    const-string v2, "TRANSACTION_getNeighboringCellInfo"

    sget v3, Lcom/lbe/security/service/core/internal/t;->d:I

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Lcom/lbe/security/service/core/internal/OpCodeMap;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/internal/ad;->a:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/OpCodeMap;

    const-string v2, "TRANSACTION_getCallState"

    sget v3, Lcom/lbe/security/service/core/internal/t;->e:I

    const/16 v4, 0x12

    invoke-direct {v1, v2, v3, v4}, Lcom/lbe/security/service/core/internal/OpCodeMap;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/internal/ad;->a:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/OpCodeMap;

    const-string v2, "TRANSACTION_endCall"

    sget v3, Lcom/lbe/security/service/core/internal/t;->f:I

    const/16 v4, 0x13

    invoke-direct {v1, v2, v3, v4}, Lcom/lbe/security/service/core/internal/OpCodeMap;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/internal/ad;->a:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/OpCodeMap;

    const-string v2, "TRANSACTION_answerRingingCall"

    sget v3, Lcom/lbe/security/service/core/internal/t;->g:I

    const/16 v4, 0x14

    invoke-direct {v1, v2, v3, v4}, Lcom/lbe/security/service/core/internal/OpCodeMap;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/internal/ad;->a:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/OpCodeMap;

    const-string v2, "TRANSACTION_silenceRinger"

    sget v3, Lcom/lbe/security/service/core/internal/t;->h:I

    const/16 v4, 0x15

    invoke-direct {v1, v2, v3, v4}, Lcom/lbe/security/service/core/internal/OpCodeMap;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/internal/ad;->a:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/OpCodeMap;

    const-string v2, "TRANSACTION_cancelMissedCallsNotification"

    sget v3, Lcom/lbe/security/service/core/internal/t;->i:I

    const/16 v4, 0x16

    invoke-direct {v1, v2, v3, v4}, Lcom/lbe/security/service/core/internal/OpCodeMap;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
