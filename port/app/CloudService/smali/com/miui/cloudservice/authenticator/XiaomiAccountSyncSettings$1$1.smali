.class Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$1$1;
.super Ljava/lang/Object;
.source "XiaomiAccountSyncSettings.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$1;


# direct methods
.method constructor <init>(Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$1;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$1$1;->this$1:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    .line 272
    .local v1, success:Z
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 277
    :goto_0
    if-eqz v1, :cond_0

    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.xiaomi.XIAOMI_ACCOUNT_REMOVED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "account"

    iget-object v3, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$1$1;->this$1:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$1;

    iget-object v3, v3, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$1;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;

    iget-object v3, v3, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 286
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$1$1;->this$1:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$1;

    iget-object v2, v2, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 287
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$1$1;->this$1:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$1;

    iget-object v2, v2, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 292
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 290
    :cond_0
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$1$1;->this$1:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$1;

    iget-object v2, v2, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$1;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;

    const/16 v3, 0x65

    #calls: Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->showDialog(I)V
    invoke-static {v2, v3}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->access$000(Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;I)V

    goto :goto_1

    .line 275
    :catch_0
    move-exception v2

    goto :goto_0

    .line 274
    :catch_1
    move-exception v2

    goto :goto_0

    .line 273
    :catch_2
    move-exception v2

    goto :goto_0
.end method
