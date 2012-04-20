.class final Lcom/lbe/security/ui/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/lbe/security/ui/PermissionList;


# direct methods
.method constructor <init>(Lcom/lbe/security/ui/PermissionList;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/ui/y;->a:Lcom/lbe/security/ui/PermissionList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lbe/security/ui/y;->a:Lcom/lbe/security/ui/PermissionList;

    iget-object v0, v0, Lcom/lbe/security/ui/PermissionList;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/ui/a;

    invoke-virtual {v0}, Lcom/lbe/security/ui/a;->d()Lcom/lbe/security/bean/e;

    move-result-object v2

    iget-object v0, p0, Lcom/lbe/security/ui/y;->a:Lcom/lbe/security/ui/PermissionList;

    invoke-static {v0}, Lcom/lbe/security/ui/PermissionList;->a(Lcom/lbe/security/ui/PermissionList;)Lcom/lbe/security/bean/k;

    move-result-object v0

    iget-object v3, p0, Lcom/lbe/security/ui/y;->a:Lcom/lbe/security/ui/PermissionList;

    invoke-static {v3}, Lcom/lbe/security/ui/PermissionList;->a(Lcom/lbe/security/ui/PermissionList;)Lcom/lbe/security/bean/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lbe/security/bean/k;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lbe/security/bean/e;->a(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lbe/security/bean/k;->a(I)Lcom/lbe/security/bean/h;

    move-result-object v3

    iget-object v0, p0, Lcom/lbe/security/ui/y;->a:Lcom/lbe/security/ui/PermissionList;

    invoke-static {v0, v1}, Lcom/lbe/security/ui/PermissionList;->a(Lcom/lbe/security/ui/PermissionList;I)V

    move v0, v1

    :goto_0
    iget-object v1, p0, Lcom/lbe/security/ui/y;->a:Lcom/lbe/security/ui/PermissionList;

    invoke-static {v1}, Lcom/lbe/security/ui/PermissionList;->a(Lcom/lbe/security/ui/PermissionList;)Lcom/lbe/security/bean/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lbe/security/bean/k;->a()Lcom/lbe/security/bean/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lbe/security/bean/i;->a()[Lcom/lbe/security/bean/h;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lbe/security/ui/y;->a:Lcom/lbe/security/ui/PermissionList;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/lbe/security/ui/y;->a:Lcom/lbe/security/ui/PermissionList;

    invoke-static {v1}, Lcom/lbe/security/ui/PermissionList;->a(Lcom/lbe/security/ui/PermissionList;)Lcom/lbe/security/bean/k;

    move-result-object v1

    iget-object v3, p0, Lcom/lbe/security/ui/y;->a:Lcom/lbe/security/ui/PermissionList;

    invoke-virtual {v1, v3}, Lcom/lbe/security/bean/k;->b(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/lbe/security/ui/y;->a:Lcom/lbe/security/ui/PermissionList;

    invoke-static {v1}, Lcom/lbe/security/ui/PermissionList;->b(Lcom/lbe/security/ui/PermissionList;)[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, p0, Lcom/lbe/security/ui/y;->a:Lcom/lbe/security/ui/PermissionList;

    invoke-static {v3}, Lcom/lbe/security/ui/PermissionList;->c(Lcom/lbe/security/ui/PermissionList;)I

    move-result v3

    new-instance v4, Lcom/lbe/security/ui/q;

    invoke-direct {v4, p0}, Lcom/lbe/security/ui/q;-><init>(Lcom/lbe/security/ui/y;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v3, Lcom/lbe/security/ui/r;

    invoke-direct {v3, p0, v2}, Lcom/lbe/security/ui/r;-><init>(Lcom/lbe/security/ui/y;Lcom/lbe/security/bean/e;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/lbe/security/ui/y;->a:Lcom/lbe/security/ui/PermissionList;

    invoke-static {v1}, Lcom/lbe/security/ui/PermissionList;->a(Lcom/lbe/security/ui/PermissionList;)Lcom/lbe/security/bean/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lbe/security/bean/k;->a()Lcom/lbe/security/bean/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lbe/security/bean/i;->a()[Lcom/lbe/security/bean/h;

    move-result-object v1

    aget-object v1, v1, v0

    if-ne v3, v1, :cond_1

    iget-object v1, p0, Lcom/lbe/security/ui/y;->a:Lcom/lbe/security/ui/PermissionList;

    invoke-static {v1, v0}, Lcom/lbe/security/ui/PermissionList;->a(Lcom/lbe/security/ui/PermissionList;I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
