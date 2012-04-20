.class public Lcom/android/monitor/ApplyRulesAlertActivity;
.super Landroid/app/Activity;
.source "ApplyRulesAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showActionDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 26
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 27
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 28
    const v1, 0x7f050027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 29
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 30
    const v1, 0x7f050026

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 31
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/monitor/ApplyRulesAlertActivity;->requestWindowFeature(I)Z

    .line 18
    invoke-virtual {p0}, Lcom/android/monitor/ApplyRulesAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 19
    invoke-virtual {p0}, Lcom/android/monitor/ApplyRulesAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 20
    invoke-virtual {p0}, Lcom/android/monitor/ApplyRulesAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 21
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, errorMsg:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/monitor/ApplyRulesAlertActivity;->showActionDialog(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/monitor/ApplyRulesAlertActivity;->finish()V

    .line 37
    return-void
.end method
