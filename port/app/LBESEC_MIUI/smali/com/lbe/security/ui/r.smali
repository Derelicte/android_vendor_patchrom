.class final Lcom/lbe/security/ui/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/lbe/security/ui/y;

.field private final synthetic b:Lcom/lbe/security/bean/e;


# direct methods
.method constructor <init>(Lcom/lbe/security/ui/y;Lcom/lbe/security/bean/e;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/ui/r;->a:Lcom/lbe/security/ui/y;

    iput-object p2, p0, Lcom/lbe/security/ui/r;->b:Lcom/lbe/security/bean/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/lbe/security/ui/r;->a:Lcom/lbe/security/ui/y;

    iget-object v0, v0, Lcom/lbe/security/ui/y;->a:Lcom/lbe/security/ui/PermissionList;

    invoke-static {v0}, Lcom/lbe/security/ui/PermissionList;->a(Lcom/lbe/security/ui/PermissionList;)Lcom/lbe/security/bean/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lbe/security/bean/k;->a()Lcom/lbe/security/bean/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lbe/security/bean/i;->a()[Lcom/lbe/security/bean/h;

    move-result-object v0

    iget-object v1, p0, Lcom/lbe/security/ui/r;->a:Lcom/lbe/security/ui/y;

    iget-object v1, v1, Lcom/lbe/security/ui/y;->a:Lcom/lbe/security/ui/PermissionList;

    invoke-static {v1}, Lcom/lbe/security/ui/PermissionList;->c(Lcom/lbe/security/ui/PermissionList;)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/lbe/security/ui/r;->a:Lcom/lbe/security/ui/y;

    iget-object v1, v1, Lcom/lbe/security/ui/y;->a:Lcom/lbe/security/ui/PermissionList;

    invoke-static {v1}, Lcom/lbe/security/ui/PermissionList;->d(Lcom/lbe/security/ui/PermissionList;)Lcom/lbe/security/service/privacy/k;

    move-result-object v1

    iget-object v2, p0, Lcom/lbe/security/ui/r;->b:Lcom/lbe/security/bean/e;

    iget-object v3, p0, Lcom/lbe/security/ui/r;->a:Lcom/lbe/security/ui/y;

    iget-object v3, v3, Lcom/lbe/security/ui/y;->a:Lcom/lbe/security/ui/PermissionList;

    invoke-static {v3}, Lcom/lbe/security/ui/PermissionList;->a(Lcom/lbe/security/ui/PermissionList;)Lcom/lbe/security/bean/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lbe/security/bean/k;->c()I

    move-result v3

    invoke-virtual {v0}, Lcom/lbe/security/bean/h;->c()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;II)V

    return-void
.end method
