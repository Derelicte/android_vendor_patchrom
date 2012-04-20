.class Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;
.super Ljava/lang/Object;
.source "AccountExpiredAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$accountManager:Landroid/accounts/AccountManager;


# direct methods
.method constructor <init>(Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;Landroid/accounts/AccountManager;Landroid/accounts/Account;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;

    iput-object p2, p0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;->val$accountManager:Landroid/accounts/AccountManager;

    iput-object p3, p0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;->val$account:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;->val$accountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;->val$account:Landroid/accounts/Account;

    new-instance v2, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2$1;

    invoke-direct {v2, p0}, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2$1;-><init>(Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 70
    return-void
.end method
