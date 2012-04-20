.class final Lcom/lbe/security/ui/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/lbe/security/ui/AppPermissionEditor;

.field private final synthetic b:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/lbe/security/ui/AppPermissionEditor;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/ui/k;->a:Lcom/lbe/security/ui/AppPermissionEditor;

    iput-object p2, p0, Lcom/lbe/security/ui/k;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/lbe/security/ui/k;->a:Lcom/lbe/security/ui/AppPermissionEditor;

    iget-object v1, p0, Lcom/lbe/security/ui/k;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/lbe/security/ui/AppPermissionEditor;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/lbe/security/ui/k;->a:Lcom/lbe/security/ui/AppPermissionEditor;

    invoke-virtual {v0}, Lcom/lbe/security/ui/AppPermissionEditor;->finish()V

    return-void
.end method
