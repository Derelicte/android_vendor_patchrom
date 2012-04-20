.class public final Lcom/lbe/security/service/core/internal/ar;
.super Ljava/lang/Object;


# static fields
.field private static f:Lcom/lbe/security/service/core/internal/ar;


# instance fields
.field private a:Ljava/lang/Class;

.field private b:Ljava/lang/reflect/Method;

.field private c:Ljava/lang/reflect/Method;

.field private d:Ljava/lang/reflect/Method;

.field private e:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/lbe/security/service/core/internal/ar;->f:Lcom/lbe/security/service/core/internal/ar;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lcom/lbe/security/service/core/internal/ar;
    .locals 6

    sget-object v0, Lcom/lbe/security/service/core/internal/ar;->f:Lcom/lbe/security/service/core/internal/ar;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/lbe/security/service/core/internal/ar;

    invoke-direct {v0}, Lcom/lbe/security/service/core/internal/ar;-><init>()V

    sput-object v0, Lcom/lbe/security/service/core/internal/ar;->f:Lcom/lbe/security/service/core/internal/ar;

    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, v0, Lcom/lbe/security/service/core/internal/ar;->a:Ljava/lang/Class;

    sget-object v0, Lcom/lbe/security/service/core/internal/ar;->f:Lcom/lbe/security/service/core/internal/ar;

    sget-object v1, Lcom/lbe/security/service/core/internal/ar;->f:Lcom/lbe/security/service/core/internal/ar;

    iget-object v1, v1, Lcom/lbe/security/service/core/internal/ar;->a:Ljava/lang/Class;

    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v0, Lcom/lbe/security/service/core/internal/ar;->b:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/lbe/security/service/core/internal/ar;->f:Lcom/lbe/security/service/core/internal/ar;

    sget-object v1, Lcom/lbe/security/service/core/internal/ar;->f:Lcom/lbe/security/service/core/internal/ar;

    iget-object v1, v1, Lcom/lbe/security/service/core/internal/ar;->a:Ljava/lang/Class;

    const-string v2, "addService"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v0, Lcom/lbe/security/service/core/internal/ar;->c:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/lbe/security/service/core/internal/ar;->f:Lcom/lbe/security/service/core/internal/ar;

    sget-object v1, Lcom/lbe/security/service/core/internal/ar;->f:Lcom/lbe/security/service/core/internal/ar;

    iget-object v1, v1, Lcom/lbe/security/service/core/internal/ar;->a:Ljava/lang/Class;

    const-string v2, "checkService"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v0, Lcom/lbe/security/service/core/internal/ar;->d:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/lbe/security/service/core/internal/ar;->f:Lcom/lbe/security/service/core/internal/ar;

    sget-object v1, Lcom/lbe/security/service/core/internal/ar;->f:Lcom/lbe/security/service/core/internal/ar;

    iget-object v1, v1, Lcom/lbe/security/service/core/internal/ar;->a:Ljava/lang/Class;

    const-string v2, "listServices"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v0, Lcom/lbe/security/service/core/internal/ar;->e:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/lbe/security/service/core/internal/ar;->f:Lcom/lbe/security/service/core/internal/ar;

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-object v0, Lcom/lbe/security/service/core/internal/ar;->f:Lcom/lbe/security/service/core/internal/ar;

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/core/internal/ar;->d:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method
