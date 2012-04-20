.class public final Lcom/lbe/security/bean/m;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/lbe/security/bean/c;

.field public static b:Lcom/lbe/security/bean/b;

.field private static c:Lcom/lbe/security/bean/h;

.field private static d:Lcom/lbe/security/bean/h;

.field private static e:Lcom/lbe/security/bean/h;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/lbe/security/bean/h;

    const/4 v1, 0x2

    const/high16 v2, 0x7f02

    const v3, 0x7f07001b

    const v4, 0x7f07001e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lbe/security/bean/h;-><init>(IIII)V

    sput-object v0, Lcom/lbe/security/bean/m;->c:Lcom/lbe/security/bean/h;

    new-instance v0, Lcom/lbe/security/bean/h;

    const/4 v1, 0x1

    const v2, 0x7f020008

    const v3, 0x7f07001c

    const v4, 0x7f07001f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lbe/security/bean/h;-><init>(IIII)V

    sput-object v0, Lcom/lbe/security/bean/m;->d:Lcom/lbe/security/bean/h;

    new-instance v0, Lcom/lbe/security/bean/h;

    const/4 v1, 0x0

    const v2, 0x7f020009

    const v3, 0x7f07001d

    const v4, 0x7f070020

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lbe/security/bean/h;-><init>(IIII)V

    sput-object v0, Lcom/lbe/security/bean/m;->e:Lcom/lbe/security/bean/h;

    new-instance v0, Lcom/lbe/security/bean/c;

    invoke-direct {v0}, Lcom/lbe/security/bean/c;-><init>()V

    sput-object v0, Lcom/lbe/security/bean/m;->a:Lcom/lbe/security/bean/c;

    new-instance v0, Lcom/lbe/security/bean/b;

    invoke-direct {v0}, Lcom/lbe/security/bean/b;-><init>()V

    sput-object v0, Lcom/lbe/security/bean/m;->b:Lcom/lbe/security/bean/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/lbe/security/bean/h;
    .locals 1

    sget-object v0, Lcom/lbe/security/bean/m;->c:Lcom/lbe/security/bean/h;

    return-object v0
.end method

.method static synthetic b()Lcom/lbe/security/bean/h;
    .locals 1

    sget-object v0, Lcom/lbe/security/bean/m;->d:Lcom/lbe/security/bean/h;

    return-object v0
.end method

.method static synthetic c()Lcom/lbe/security/bean/h;
    .locals 1

    sget-object v0, Lcom/lbe/security/bean/m;->e:Lcom/lbe/security/bean/h;

    return-object v0
.end method
