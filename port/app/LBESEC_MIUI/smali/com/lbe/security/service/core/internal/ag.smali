.class public final Lcom/lbe/security/service/core/internal/ag;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lbe/security/service/core/internal/ag;->a:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/OpCodeMap;

    const-string v2, "TRANSACTION_getDeviceId"

    sget v3, Lcom/lbe/security/service/core/internal/an;->a:I

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lcom/lbe/security/service/core/internal/OpCodeMap;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/internal/ag;->a:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/OpCodeMap;

    const-string v2, "TRANSACTION_getDeviceSvn"

    sget v3, Lcom/lbe/security/service/core/internal/an;->b:I

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/lbe/security/service/core/internal/OpCodeMap;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/internal/ag;->a:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/OpCodeMap;

    const-string v2, "TRANSACTION_getSubscriberId"

    sget v3, Lcom/lbe/security/service/core/internal/an;->c:I

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Lcom/lbe/security/service/core/internal/OpCodeMap;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/internal/ag;->a:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/OpCodeMap;

    const-string v2, "TRANSACTION_getIccSerialNumber"

    sget v3, Lcom/lbe/security/service/core/internal/an;->d:I

    const/4 v4, 0x7

    invoke-direct {v1, v2, v3, v4}, Lcom/lbe/security/service/core/internal/OpCodeMap;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/internal/ag;->a:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/OpCodeMap;

    const-string v2, "TRANSACTION_getLine1Number"

    sget v3, Lcom/lbe/security/service/core/internal/an;->e:I

    const/16 v4, 0x8

    invoke-direct {v1, v2, v3, v4}, Lcom/lbe/security/service/core/internal/OpCodeMap;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
