.class final Lcom/lbe/security/ui/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/lbe/security/ui/AppPermissionEditor;


# direct methods
.method constructor <init>(Lcom/lbe/security/ui/AppPermissionEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/ui/h;->a:Lcom/lbe/security/ui/AppPermissionEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/lbe/security/ui/h;->a:Lcom/lbe/security/ui/AppPermissionEditor;

    invoke-static {v0}, Lcom/lbe/security/ui/AppPermissionEditor;->a(Lcom/lbe/security/ui/AppPermissionEditor;)Lcom/lbe/security/service/privacy/k;

    move-result-object v0

    iget-object v1, p0, Lcom/lbe/security/ui/h;->a:Lcom/lbe/security/ui/AppPermissionEditor;

    invoke-static {v1}, Lcom/lbe/security/ui/AppPermissionEditor;->b(Lcom/lbe/security/ui/AppPermissionEditor;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lbe/security/service/privacy/k;->a(IZ)V

    return-void
.end method
