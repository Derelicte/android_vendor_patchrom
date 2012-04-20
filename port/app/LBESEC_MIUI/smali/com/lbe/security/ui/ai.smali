.class final Lcom/lbe/security/ui/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/lbe/security/ui/ak;


# direct methods
.method constructor <init>(Lcom/lbe/security/ui/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/ui/ai;->a:Lcom/lbe/security/ui/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/lbe/security/ui/ai;->a:Lcom/lbe/security/ui/ak;

    invoke-static {v0}, Lcom/lbe/security/ui/ak;->b(Lcom/lbe/security/ui/ak;)Lcom/lbe/security/service/privacy/q;

    move-result-object v0

    new-instance v1, Lcom/lbe/security/service/privacy/QueryFilter;

    invoke-direct {v1}, Lcom/lbe/security/service/privacy/QueryFilter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/service/privacy/QueryFilter;)V

    iget-object v0, p0, Lcom/lbe/security/ui/ai;->a:Lcom/lbe/security/ui/ak;

    invoke-static {v0}, Lcom/lbe/security/ui/ak;->a(Lcom/lbe/security/ui/ak;)V

    return-void
.end method
