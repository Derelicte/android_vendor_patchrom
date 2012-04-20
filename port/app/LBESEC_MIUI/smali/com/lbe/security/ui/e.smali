.class final Lcom/lbe/security/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/lbe/security/ui/PermissionListHIPS;

.field private final synthetic b:Lcom/lbe/security/bean/k;


# direct methods
.method constructor <init>(Lcom/lbe/security/ui/PermissionListHIPS;Lcom/lbe/security/bean/k;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/ui/e;->a:Lcom/lbe/security/ui/PermissionListHIPS;

    iput-object p2, p0, Lcom/lbe/security/ui/e;->b:Lcom/lbe/security/bean/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lbe/security/ui/e;->a:Lcom/lbe/security/ui/PermissionListHIPS;

    const-class v2, Lcom/lbe/security/ui/PermissionList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "extra_permission"

    iget-object v2, p0, Lcom/lbe/security/ui/e;->b:Lcom/lbe/security/bean/k;

    invoke-virtual {v2}, Lcom/lbe/security/bean/k;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/lbe/security/ui/e;->a:Lcom/lbe/security/ui/PermissionListHIPS;

    invoke-virtual {v1, v0}, Lcom/lbe/security/ui/PermissionListHIPS;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
