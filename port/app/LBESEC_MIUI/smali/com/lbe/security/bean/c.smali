.class public final Lcom/lbe/security/bean/c;
.super Lcom/lbe/security/bean/i;


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lbe/security/bean/h;

    const/4 v1, 0x0

    invoke-static {}, Lcom/lbe/security/bean/m;->a()Lcom/lbe/security/bean/h;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lcom/lbe/security/bean/m;->b()Lcom/lbe/security/bean/h;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {}, Lcom/lbe/security/bean/m;->c()Lcom/lbe/security/bean/h;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/lbe/security/bean/i;-><init>([Lcom/lbe/security/bean/h;)V

    return-void
.end method
