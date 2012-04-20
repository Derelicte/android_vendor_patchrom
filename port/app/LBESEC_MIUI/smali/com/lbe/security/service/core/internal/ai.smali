.class public final Lcom/lbe/security/service/core/internal/ai;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field public static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.app.IActivityManager"

    const-string v1, "GET_CONTENT_PROVIDER_TRANSACTION"

    const/16 v2, 0x1d

    invoke-static {v0, v1, v2}, Lcom/lbe/security/service/core/internal/aq;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lbe/security/service/core/internal/ai;->a:I

    const-string v0, "android.app.IActivityManager"

    const-string v1, "START_ACTIVITY_TRANSACTION"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/lbe/security/service/core/internal/aq;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lbe/security/service/core/internal/ai;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
