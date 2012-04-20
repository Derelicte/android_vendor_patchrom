.class Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$1;
.super Ljava/lang/Object;
.source "XiaomiAccountSyncSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$1;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;

    iput-object p2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$1;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;

    iget-object v1, v1, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccount:Landroid/accounts/Account;

    new-instance v2, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$1$1;

    invoke-direct {v2, p0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$1$1;-><init>(Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$1;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 294
    return-void
.end method
