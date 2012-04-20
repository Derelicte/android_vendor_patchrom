.class final Lcom/lbe/security/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/lbe/security/ui/PermissionListHIPS;


# direct methods
.method constructor <init>(Lcom/lbe/security/ui/PermissionListHIPS;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/ui/b;->a:Lcom/lbe/security/ui/PermissionListHIPS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/lbe/security/ui/b;->a:Lcom/lbe/security/ui/PermissionListHIPS;

    invoke-static {v0}, Lcom/lbe/security/ui/PermissionListHIPS;->b(Lcom/lbe/security/ui/PermissionListHIPS;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/lbe/security/ui/b;->a:Lcom/lbe/security/ui/PermissionListHIPS;

    invoke-static {v0}, Lcom/lbe/security/ui/PermissionListHIPS;->b(Lcom/lbe/security/ui/PermissionListHIPS;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/lbe/security/ui/b;->a:Lcom/lbe/security/ui/PermissionListHIPS;

    invoke-static {v0}, Lcom/lbe/security/ui/PermissionListHIPS;->b(Lcom/lbe/security/ui/PermissionListHIPS;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/lbe/security/ui/b;->a:Lcom/lbe/security/ui/PermissionListHIPS;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
