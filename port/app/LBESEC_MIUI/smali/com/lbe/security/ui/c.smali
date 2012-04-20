.class final Lcom/lbe/security/ui/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/lbe/security/ui/PermissionListHIPS;


# direct methods
.method constructor <init>(Lcom/lbe/security/ui/PermissionListHIPS;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/ui/c;->a:Lcom/lbe/security/ui/PermissionListHIPS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/lbe/security/ui/c;->a:Lcom/lbe/security/ui/PermissionListHIPS;

    invoke-static {v0}, Lcom/lbe/security/ui/PermissionListHIPS;->b(Lcom/lbe/security/ui/PermissionListHIPS;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/lbe/security/ui/c;->a:Lcom/lbe/security/ui/PermissionListHIPS;

    invoke-static {v0}, Lcom/lbe/security/ui/PermissionListHIPS;->b(Lcom/lbe/security/ui/PermissionListHIPS;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/lbe/security/ui/c;->a:Lcom/lbe/security/ui/PermissionListHIPS;

    invoke-static {v0}, Lcom/lbe/security/ui/PermissionListHIPS;->b(Lcom/lbe/security/ui/PermissionListHIPS;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/lbe/security/ui/c;->a:Lcom/lbe/security/ui/PermissionListHIPS;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
