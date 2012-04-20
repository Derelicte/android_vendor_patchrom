.class Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$3;
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

.field final synthetic val$isEnable:Z


# direct methods
.method constructor <init>(Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$3;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;

    iput-boolean p2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$3;->val$isEnable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$3;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;

    #getter for: Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserMitalkSyncPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->access$100(Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-boolean v0, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$3;->val$isEnable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 310
    return-void

    .line 309
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
