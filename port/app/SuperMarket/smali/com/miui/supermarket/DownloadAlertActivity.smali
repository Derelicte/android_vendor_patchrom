.class public abstract Lcom/miui/supermarket/DownloadAlertActivity;
.super Landroid/app/Activity;
.source "DownloadAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showDialog()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/miui/supermarket/DownloadAlertActivity;->getAlertTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/supermarket/DownloadAlertActivity;->getAlertMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060011

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060012

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 50
    return-void
.end method


# virtual methods
.method protected abstract getAlertMessage()Ljava/lang/String;
.end method

.method protected abstract getAlertTitle()Ljava/lang/String;
.end method

.method protected abstract initMembersViaIntent(Landroid/content/Intent;)V
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/DownloadAlertActivity;->onCancelClick(Landroid/content/DialogInterface;)V

    .line 73
    invoke-virtual {p0}, Lcom/miui/supermarket/DownloadAlertActivity;->finish()V

    .line 74
    return-void
.end method

.method protected onCancelClick(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 86
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 58
    packed-switch p2, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 60
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/DownloadAlertActivity;->onPositiveClick(Landroid/content/DialogInterface;)V

    .line 61
    invoke-virtual {p0}, Lcom/miui/supermarket/DownloadAlertActivity;->finish()V

    goto :goto_0

    .line 64
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/DownloadAlertActivity;->onNegativeClick(Landroid/content/DialogInterface;)V

    .line 65
    invoke-virtual {p0}, Lcom/miui/supermarket/DownloadAlertActivity;->finish()V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/miui/supermarket/DownloadAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/supermarket/DownloadAlertActivity;->initMembersViaIntent(Landroid/content/Intent;)V

    .line 39
    invoke-direct {p0}, Lcom/miui/supermarket/DownloadAlertActivity;->showDialog()V

    .line 40
    return-void
.end method

.method protected onNegativeClick(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 82
    return-void
.end method

.method protected onPositiveClick(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 78
    return-void
.end method
