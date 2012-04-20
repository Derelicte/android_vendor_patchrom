.class final Lcom/lbe/security/ui/su/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/lbe/security/ui/su/SuEnableDialog;


# direct methods
.method constructor <init>(Lcom/lbe/security/ui/su/SuEnableDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/ui/su/a;->a:Lcom/lbe/security/ui/su/SuEnableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/lbe/security/ui/su/a;->a:Lcom/lbe/security/ui/su/SuEnableDialog;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lbe/security/ui/su/a;->a:Lcom/lbe/security/ui/su/SuEnableDialog;

    const-class v3, Lcom/lbe/security/ui/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/lbe/security/ui/su/SuEnableDialog;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/lbe/security/ui/su/a;->a:Lcom/lbe/security/ui/su/SuEnableDialog;

    invoke-virtual {v0}, Lcom/lbe/security/ui/su/SuEnableDialog;->finish()V

    return-void
.end method
