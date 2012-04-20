.class Lcom/android/updater/EmergencyUpdateActivity$3;
.super Ljava/lang/Object;
.source "EmergencyUpdateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/EmergencyUpdateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/EmergencyUpdateActivity;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$updateInfo:Lcom/android/updater/customTypes/UpdateInfo;


# direct methods
.method constructor <init>(Lcom/android/updater/EmergencyUpdateActivity;Lcom/android/updater/customTypes/UpdateInfo;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/updater/EmergencyUpdateActivity$3;->this$0:Lcom/android/updater/EmergencyUpdateActivity;

    iput-object p2, p0, Lcom/android/updater/EmergencyUpdateActivity$3;->val$updateInfo:Lcom/android/updater/customTypes/UpdateInfo;

    iput-object p3, p0, Lcom/android/updater/EmergencyUpdateActivity$3;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/updater/EmergencyUpdateActivity$3;->val$updateInfo:Lcom/android/updater/customTypes/UpdateInfo;

    invoke-static {v0}, Lcom/android/updater/ApplyUpdateFragment;->setUpdateInfo(Lcom/android/updater/customTypes/UpdateInfo;)V

    .line 60
    iget-object v0, p0, Lcom/android/updater/EmergencyUpdateActivity$3;->val$intent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/updater/EmergencyUpdateActivity$3;->this$0:Lcom/android/updater/EmergencyUpdateActivity;

    const-class v3, Lcom/android/updater/ApplyUpdateActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 61
    iget-object v0, p0, Lcom/android/updater/EmergencyUpdateActivity$3;->this$0:Lcom/android/updater/EmergencyUpdateActivity;

    iget-object v1, p0, Lcom/android/updater/EmergencyUpdateActivity$3;->val$updateInfo:Lcom/android/updater/customTypes/UpdateInfo;

    invoke-static {v0, v1}, Lcom/android/updater/utils/StringUtils;->getModName(Landroid/content/Context;Lcom/android/updater/customTypes/UpdateInfo;)Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getRomDir()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/android/updater/EmergencyUpdateActivity$3;->val$updateInfo:Lcom/android/updater/customTypes/UpdateInfo;

    invoke-virtual {v3}, Lcom/android/updater/customTypes/UpdateInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/android/updater/EmergencyUpdateActivity$3;->val$intent:Landroid/content/Intent;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Lcom/android/updater/EmergencyUpdateActivity$3;->val$intent:Landroid/content/Intent;

    const-string v2, "update_info"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object v0, p0, Lcom/android/updater/EmergencyUpdateActivity$3;->val$intent:Landroid/content/Intent;

    const-string v1, "ota_update"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    iget-object v0, p0, Lcom/android/updater/EmergencyUpdateActivity$3;->this$0:Lcom/android/updater/EmergencyUpdateActivity;

    iget-object v1, p0, Lcom/android/updater/EmergencyUpdateActivity$3;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/updater/EmergencyUpdateActivity;->startActivity(Landroid/content/Intent;)V

    .line 67
    iget-object v0, p0, Lcom/android/updater/EmergencyUpdateActivity$3;->this$0:Lcom/android/updater/EmergencyUpdateActivity;

    invoke-virtual {v0}, Lcom/android/updater/EmergencyUpdateActivity;->finish()V

    .line 68
    return-void
.end method
