.class public final Lcom/lbe/security/service/core/internal/s;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lbe/security/service/core/internal/s;->a:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/OpCodeMap;

    const-string v2, "TRANSACTION_requestLocationUpdates"

    sget v3, Lcom/lbe/security/service/core/internal/ah;->a:I

    invoke-direct {v1, v2, v3, v4}, Lcom/lbe/security/service/core/internal/OpCodeMap;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/internal/s;->a:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/OpCodeMap;

    const-string v2, "TRANSACTION_requestLocationUpdatesPI"

    sget v3, Lcom/lbe/security/service/core/internal/ah;->b:I

    invoke-direct {v1, v2, v3, v4}, Lcom/lbe/security/service/core/internal/OpCodeMap;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/internal/s;->a:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/OpCodeMap;

    const-string v2, "TRANSACTION_getLastKnownLocation"

    sget v3, Lcom/lbe/security/service/core/internal/ah;->c:I

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/lbe/security/service/core/internal/OpCodeMap;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
