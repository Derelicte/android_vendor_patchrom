.class Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$2;
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

.field final synthetic val$isEnable:Z


# direct methods
.method constructor <init>(Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;ZLandroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$2;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;

    iput-boolean p2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$2;->val$isEnable:Z

    iput-object p3, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 315
    const-string v2, "persist.sys.mitalk.enable"

    iget-boolean v1, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$2;->val$isEnable:Z

    if-eqz v1, :cond_0

    const-string v1, "true"

    :goto_0
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.XIAOMI_ACCOUNT_MITALK_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$2;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;

    iget-object v2, v2, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 324
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 325
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$2;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;

    #getter for: Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserMitalkSyncPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->access$100(Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$2;->val$isEnable:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 326
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$2;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;

    #calls: Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->init()V
    invoke-static {v1}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->access$200(Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;)V

    .line 327
    return-void

    .line 315
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const-string v1, "false"

    goto :goto_0
.end method
