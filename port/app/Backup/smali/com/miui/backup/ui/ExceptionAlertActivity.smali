.class public Lcom/miui/backup/ui/ExceptionAlertActivity;
.super Landroid/app/Activity;
.source "ExceptionAlertActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/miui/backup/ui/ExceptionAlertActivity;->requestWindowFeature(I)Z

    .line 22
    invoke-virtual {p0}, Lcom/miui/backup/ui/ExceptionAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 23
    invoke-virtual {p0}, Lcom/miui/backup/ui/ExceptionAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 25
    invoke-virtual {p0}, Lcom/miui/backup/ui/ExceptionAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "exception_title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, title:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    const v2, 0x7f070052

    invoke-virtual {p0, v2}, Lcom/miui/backup/ui/ExceptionAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/miui/backup/ui/ExceptionAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "exception_message"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, message:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/miui/backup/ui/ExceptionAlertActivity$1;

    invoke-direct {v4, p0}, Lcom/miui/backup/ui/ExceptionAlertActivity$1;-><init>(Lcom/miui/backup/ui/ExceptionAlertActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 39
    return-void
.end method
