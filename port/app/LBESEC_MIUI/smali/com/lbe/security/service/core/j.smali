.class public final enum Lcom/lbe/security/service/core/j;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/lbe/security/service/core/j;

.field public static final enum b:Lcom/lbe/security/service/core/j;

.field public static final enum c:Lcom/lbe/security/service/core/j;

.field private static final synthetic d:[Lcom/lbe/security/service/core/j;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/lbe/security/service/core/j;

    const-string v1, "FIREWALL_UNSUPPORTED"

    invoke-direct {v0, v1, v2}, Lcom/lbe/security/service/core/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lbe/security/service/core/j;->a:Lcom/lbe/security/service/core/j;

    new-instance v0, Lcom/lbe/security/service/core/j;

    const-string v1, "FIREWALL_NFFIREWALL"

    invoke-direct {v0, v1, v3}, Lcom/lbe/security/service/core/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lbe/security/service/core/j;->b:Lcom/lbe/security/service/core/j;

    new-instance v0, Lcom/lbe/security/service/core/j;

    const-string v1, "FIREWALL_UIDFIREWALL"

    invoke-direct {v0, v1, v4}, Lcom/lbe/security/service/core/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lbe/security/service/core/j;->c:Lcom/lbe/security/service/core/j;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lbe/security/service/core/j;

    sget-object v1, Lcom/lbe/security/service/core/j;->a:Lcom/lbe/security/service/core/j;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lbe/security/service/core/j;->b:Lcom/lbe/security/service/core/j;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lbe/security/service/core/j;->c:Lcom/lbe/security/service/core/j;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lbe/security/service/core/j;->d:[Lcom/lbe/security/service/core/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lbe/security/service/core/j;
    .locals 1

    const-class v0, Lcom/lbe/security/service/core/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/core/j;

    return-object v0
.end method

.method public static values()[Lcom/lbe/security/service/core/j;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/lbe/security/service/core/j;->d:[Lcom/lbe/security/service/core/j;

    array-length v1, v0

    new-array v2, v1, [Lcom/lbe/security/service/core/j;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
