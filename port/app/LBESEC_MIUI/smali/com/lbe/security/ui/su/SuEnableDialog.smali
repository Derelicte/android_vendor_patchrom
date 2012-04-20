.class public Lcom/lbe/security/ui/su/SuEnableDialog;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/lbe/security/service/privacy/k;

.field private b:Lcom/lbe/security/service/a/g;

.field private c:Lcom/lbe/security/bean/e;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/lbe/security/ui/su/SuEnableDialog;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/high16 v6, 0x104

    const/4 v2, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/su/SuEnableDialog;->setContentView(I)V

    invoke-virtual {p0}, Lcom/lbe/security/ui/su/SuEnableDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/su/SuEnableDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lbe/security/ui/su/SuEnableDialog;->d:Landroid/widget/TextView;

    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/su/SuEnableDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lbe/security/ui/su/SuEnableDialog;->e:Landroid/widget/TextView;

    const v0, 0x7f09001f

    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/su/SuEnableDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lbe/security/ui/su/SuEnableDialog;->f:Landroid/widget/Button;

    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Lcom/lbe/security/ui/su/SuEnableDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lbe/security/ui/su/SuEnableDialog;->g:Landroid/widget/Button;

    invoke-static {}, Lcom/lbe/security/service/privacy/k;->a()Lcom/lbe/security/service/privacy/k;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/ui/su/SuEnableDialog;->a:Lcom/lbe/security/service/privacy/k;

    new-instance v0, Lcom/lbe/security/service/a/g;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/a/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lbe/security/ui/su/SuEnableDialog;->b:Lcom/lbe/security/service/a/g;

    invoke-virtual {p0}, Lcom/lbe/security/ui/su/SuEnableDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_pkg_uid"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/lbe/security/ui/su/SuEnableDialog;->d:Landroid/widget/TextView;

    const v1, 0x7f07007e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/lbe/security/ui/su/SuEnableDialog;->e:Landroid/widget/TextView;

    const v1, 0x7f07008a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/lbe/security/ui/su/SuEnableDialog;->f:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/lbe/security/ui/su/SuEnableDialog;->g:Landroid/widget/Button;

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/lbe/security/ui/su/SuEnableDialog;->f:Landroid/widget/Button;

    new-instance v1, Lcom/lbe/security/ui/su/d;

    invoke-direct {v1, p0}, Lcom/lbe/security/ui/su/d;-><init>(Lcom/lbe/security/ui/su/SuEnableDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lbe/security/ui/su/SuEnableDialog;->g:Landroid/widget/Button;

    new-instance v1, Lcom/lbe/security/ui/su/b;

    invoke-direct {v1, p0}, Lcom/lbe/security/ui/su/b;-><init>(Lcom/lbe/security/ui/su/SuEnableDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/lbe/security/ui/su/SuEnableDialog;->a:Lcom/lbe/security/service/privacy/k;

    invoke-virtual {v1, v0}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/ui/su/SuEnableDialog;->c:Lcom/lbe/security/bean/e;

    iget-object v0, p0, Lcom/lbe/security/ui/su/SuEnableDialog;->c:Lcom/lbe/security/bean/e;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/lbe/security/ui/su/SuEnableDialog;->finish()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/lbe/security/ui/su/SuEnableDialog;->d:Landroid/widget/TextView;

    const v1, 0x7f070074

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/lbe/security/ui/su/SuEnableDialog;->e:Landroid/widget/TextView;

    const v1, 0x7f07009b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lbe/security/ui/su/SuEnableDialog;->b:Lcom/lbe/security/service/a/g;

    iget-object v5, p0, Lcom/lbe/security/ui/su/SuEnableDialog;->c:Lcom/lbe/security/bean/e;

    invoke-virtual {v5}, Lcom/lbe/security/bean/e;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lbe/security/service/a/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/lbe/security/ui/su/SuEnableDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/lbe/security/ui/su/SuEnableDialog;->f:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/lbe/security/ui/su/SuEnableDialog;->g:Landroid/widget/Button;

    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/lbe/security/ui/su/SuEnableDialog;->f:Landroid/widget/Button;

    new-instance v1, Lcom/lbe/security/ui/su/c;

    invoke-direct {v1, p0}, Lcom/lbe/security/ui/su/c;-><init>(Lcom/lbe/security/ui/su/SuEnableDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lbe/security/ui/su/SuEnableDialog;->g:Landroid/widget/Button;

    new-instance v1, Lcom/lbe/security/ui/su/a;

    invoke-direct {v1, p0}, Lcom/lbe/security/ui/su/a;-><init>(Lcom/lbe/security/ui/su/SuEnableDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/ui/su/SuEnableDialog;->b:Lcom/lbe/security/service/a/g;

    invoke-virtual {v0}, Lcom/lbe/security/service/a/g;->a()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
