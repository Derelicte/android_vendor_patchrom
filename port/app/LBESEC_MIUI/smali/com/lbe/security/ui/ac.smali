.class final Lcom/lbe/security/ui/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/lbe/security/ui/t;


# direct methods
.method constructor <init>(Lcom/lbe/security/ui/t;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/ui/ac;->a:Lcom/lbe/security/ui/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/lbe/security/ui/ac;->a:Lcom/lbe/security/ui/t;

    invoke-static {v0}, Lcom/lbe/security/ui/t;->c(Lcom/lbe/security/ui/t;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/lbe/security/ui/ac;->a:Lcom/lbe/security/ui/t;

    invoke-static {v0}, Lcom/lbe/security/ui/t;->c(Lcom/lbe/security/ui/t;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/lbe/security/ui/ac;->a:Lcom/lbe/security/ui/t;

    invoke-static {v0}, Lcom/lbe/security/ui/t;->c(Lcom/lbe/security/ui/t;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/lbe/security/ui/ac;->a:Lcom/lbe/security/ui/t;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
