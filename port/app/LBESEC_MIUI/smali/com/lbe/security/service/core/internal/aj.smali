.class public final Lcom/lbe/security/service/core/internal/aj;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lbe/security/service/core/internal/aj;->a:Ljava/util/List;

    const-string v1, "TRANSACTION_sendData"

    sget-object v2, Lcom/lbe/security/service/core/internal/m;->a:[Ljava/lang/Integer;

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Lcom/lbe/security/service/core/internal/OpCodeMap;->a(Ljava/lang/String;[Ljava/lang/Integer;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/lbe/security/service/core/internal/aj;->a:Ljava/util/List;

    const-string v1, "TRANSACTION_sendText"

    sget-object v2, Lcom/lbe/security/service/core/internal/m;->b:[Ljava/lang/Integer;

    const/16 v3, 0x9

    invoke-static {v1, v2, v3}, Lcom/lbe/security/service/core/internal/OpCodeMap;->a(Ljava/lang/String;[Ljava/lang/Integer;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/lbe/security/service/core/internal/aj;->a:Ljava/util/List;

    const-string v1, "TRANSACTION_sendMultipartText"

    sget-object v2, Lcom/lbe/security/service/core/internal/m;->c:[Ljava/lang/Integer;

    const/16 v3, 0xb

    invoke-static {v1, v2, v3}, Lcom/lbe/security/service/core/internal/OpCodeMap;->a(Ljava/lang/String;[Ljava/lang/Integer;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/lbe/security/service/core/internal/aj;->a:Ljava/util/List;

    const-string v1, "TRANSACTION_sendRawPdu"

    sget-object v2, Lcom/lbe/security/service/core/internal/m;->d:[Ljava/lang/Integer;

    const/16 v3, 0xc

    invoke-static {v1, v2, v3}, Lcom/lbe/security/service/core/internal/OpCodeMap;->a(Ljava/lang/String;[Ljava/lang/Integer;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
