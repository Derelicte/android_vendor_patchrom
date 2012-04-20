.class Lcom/android/updater/UpdaterBackgroundService$UpdateCheckTask;
.super Lcom/android/updater/tasks/BaseUpdateCheckerTask;
.source "UpdaterBackgroundService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/UpdaterBackgroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateCheckTask"
.end annotation


# instance fields
.field private mCheckType:I

.field final synthetic this$0:Lcom/android/updater/UpdaterBackgroundService;


# direct methods
.method public constructor <init>(Lcom/android/updater/UpdaterBackgroundService;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "checkType"

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/updater/UpdaterBackgroundService$UpdateCheckTask;->this$0:Lcom/android/updater/UpdaterBackgroundService;

    .line 374
    invoke-direct {p0, p2}, Lcom/android/updater/tasks/BaseUpdateCheckerTask;-><init>(Landroid/content/Context;)V

    .line 375
    iput p3, p0, Lcom/android/updater/UpdaterBackgroundService$UpdateCheckTask;->mCheckType:I

    .line 376
    return-void
.end method

.method private showDialog(Lcom/android/updater/customTypes/FullUpdateInfo;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 437
    invoke-virtual {p1}, Lcom/android/updater/customTypes/FullUpdateInfo;->getUpdateInfo()Lcom/android/updater/customTypes/UpdateInfo;

    move-result-object v2

    .line 438
    const/4 v1, 0x0

    .line 440
    iget-object v3, p0, Lcom/android/updater/UpdaterBackgroundService$UpdateCheckTask;->this$0:Lcom/android/updater/UpdaterBackgroundService;

    #getter for: Lcom/android/updater/UpdaterBackgroundService;->mPref:Lcom/android/updater/utils/Preferences;
    invoke-static {v3}, Lcom/android/updater/UpdaterBackgroundService;->access$500(Lcom/android/updater/UpdaterBackgroundService;)Lcom/android/updater/utils/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/updater/utils/Preferences;->getUserLevel()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 447
    :pswitch_0
    const-string v3, "e"

    invoke-virtual {v2}, Lcom/android/updater/customTypes/UpdateInfo;->getBranchCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 453
    :goto_0
    :pswitch_1
    if-eqz v0, :cond_0

    .line 454
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/updater/UpdaterBackgroundService$UpdateCheckTask;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/updater/EmergencyUpdateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 455
    const-string v1, "update_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 456
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 457
    iget-object v1, p0, Lcom/android/updater/UpdaterBackgroundService$UpdateCheckTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 459
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    .line 440
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showNotification(Lcom/android/updater/customTypes/FullUpdateInfo;)V
    .locals 6
    .parameter "fullUpdateInfo"

    .prologue
    .line 408
    invoke-virtual {p1}, Lcom/android/updater/customTypes/FullUpdateInfo;->getUpdateInfo()Lcom/android/updater/customTypes/UpdateInfo;

    move-result-object v1

    .line 409
    .local v1, updateInfo:Lcom/android/updater/customTypes/UpdateInfo;
    const/4 v0, 0x0

    .line 410
    .local v0, needShowNotification:Z
    iget-object v2, p0, Lcom/android/updater/UpdaterBackgroundService$UpdateCheckTask;->this$0:Lcom/android/updater/UpdaterBackgroundService;

    #getter for: Lcom/android/updater/UpdaterBackgroundService;->mPref:Lcom/android/updater/utils/Preferences;
    invoke-static {v2}, Lcom/android/updater/UpdaterBackgroundService;->access$500(Lcom/android/updater/UpdaterBackgroundService;)Lcom/android/updater/utils/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/updater/utils/Preferences;->getUserLevel()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 417
    :pswitch_0
    invoke-virtual {v1}, Lcom/android/updater/customTypes/UpdateInfo;->getBranchCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/updater/UpdaterBackgroundService$UpdateCheckTask;->mCheckType:I

    if-nez v2, :cond_1

    .line 420
    :cond_0
    const/4 v0, 0x1

    .line 425
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 434
    :goto_1
    return-void

    .line 413
    :pswitch_1
    const/4 v0, 0x1

    .line 414
    goto :goto_0

    .line 429
    :cond_2
    iget-object v2, p0, Lcom/android/updater/UpdaterBackgroundService$UpdateCheckTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/updater/UpdaterBackgroundService$UpdateCheckTask;->this$0:Lcom/android/updater/UpdaterBackgroundService;

    const v4, 0x7f05003e

    invoke-virtual {v3, v4}, Lcom/android/updater/UpdaterBackgroundService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f050037

    const v5, 0x7f050038

    invoke-static {v2, v1, v3, v4, v5}, Lcom/android/updater/utils/SysUtils;->showNotification(Landroid/content/Context;Lcom/android/updater/customTypes/UpdateInfo;Ljava/lang/String;II)V

    goto :goto_1

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onPostExecute(Lcom/android/updater/customTypes/FullUpdateInfo;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 380
    invoke-super {p0, p1}, Lcom/android/updater/tasks/BaseUpdateCheckerTask;->onPostExecute(Ljava/lang/Object;)V

    .line 382
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/updater/customTypes/FullUpdateInfo;->incrementalRoms:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/updater/customTypes/FullUpdateInfo;->getUpdateInfo()Lcom/android/updater/customTypes/UpdateInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v2, p0, Lcom/android/updater/UpdaterBackgroundService$UpdateCheckTask;->this$0:Lcom/android/updater/UpdaterBackgroundService;

    #getter for: Lcom/android/updater/UpdaterBackgroundService;->mPref:Lcom/android/updater/utils/Preferences;
    invoke-static {v2}, Lcom/android/updater/UpdaterBackgroundService;->access$500(Lcom/android/updater/UpdaterBackgroundService;)Lcom/android/updater/utils/Preferences;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/updater/utils/Preferences;->setBackgroundDownload(Z)V

    .line 387
    invoke-virtual {p1}, Lcom/android/updater/customTypes/FullUpdateInfo;->getUpdateInfo()Lcom/android/updater/customTypes/UpdateInfo;

    move-result-object v1

    .line 389
    .local v1, updateInfo:Lcom/android/updater/customTypes/UpdateInfo;
    iget-object v2, p0, Lcom/android/updater/UpdaterBackgroundService$UpdateCheckTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/updater/utils/SysUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/android/updater/utils/SysUtils;->checkExistingRomFile(Lcom/android/updater/customTypes/UpdateInfo;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/updater/UpdaterBackgroundService$UpdateCheckTask;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v1}, Lcom/android/updater/utils/SysUtils;->downloadUpdate(Landroid/content/Context;ZLcom/android/updater/customTypes/UpdateInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 393
    new-instance v0, Lcom/android/updater/tasks/DownloadUpdateManager;

    iget-object v2, p0, Lcom/android/updater/UpdaterBackgroundService$UpdateCheckTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/updater/UpdaterBackgroundService$UpdateCheckTask;->this$0:Lcom/android/updater/UpdaterBackgroundService;

    #getter for: Lcom/android/updater/UpdaterBackgroundService;->mPref:Lcom/android/updater/utils/Preferences;
    invoke-static {v3}, Lcom/android/updater/UpdaterBackgroundService;->access$500(Lcom/android/updater/UpdaterBackgroundService;)Lcom/android/updater/utils/Preferences;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/updater/tasks/DownloadUpdateManager;-><init>(Landroid/content/Context;Lcom/android/updater/utils/Preferences;)V

    .line 394
    .local v0, downloadUpdateManager:Lcom/android/updater/tasks/DownloadUpdateManager;
    invoke-virtual {v0, v1}, Lcom/android/updater/tasks/DownloadUpdateManager;->download(Lcom/android/updater/customTypes/UpdateInfo;)V

    .line 395
    iget-object v2, p0, Lcom/android/updater/UpdaterBackgroundService$UpdateCheckTask;->this$0:Lcom/android/updater/UpdaterBackgroundService;

    #getter for: Lcom/android/updater/UpdaterBackgroundService;->mPref:Lcom/android/updater/utils/Preferences;
    invoke-static {v2}, Lcom/android/updater/UpdaterBackgroundService;->access$500(Lcom/android/updater/UpdaterBackgroundService;)Lcom/android/updater/utils/Preferences;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/updater/utils/Preferences;->setBackgroundDownload(Z)V

    .line 399
    .end local v0           #downloadUpdateManager:Lcom/android/updater/tasks/DownloadUpdateManager;
    :cond_2
    invoke-static {v1}, Lcom/android/updater/utils/SysUtils;->checkExistingRomFile(Lcom/android/updater/customTypes/UpdateInfo;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/updater/UpdaterBackgroundService$UpdateCheckTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/updater/utils/SysUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    :cond_3
    iget-object v2, p0, Lcom/android/updater/UpdaterBackgroundService$UpdateCheckTask;->this$0:Lcom/android/updater/UpdaterBackgroundService;

    #getter for: Lcom/android/updater/UpdaterBackgroundService;->mPref:Lcom/android/updater/utils/Preferences;
    invoke-static {v2}, Lcom/android/updater/UpdaterBackgroundService;->access$500(Lcom/android/updater/UpdaterBackgroundService;)Lcom/android/updater/utils/Preferences;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/updater/utils/Preferences;->setCheckType(I)V

    .line 401
    iget-object v2, p0, Lcom/android/updater/UpdaterBackgroundService$UpdateCheckTask;->mContext:Landroid/content/Context;

    const v3, 0x7f020049

    invoke-static {v2, v3}, Lcom/android/updater/utils/SysUtils;->showBubble(Landroid/content/Context;I)V

    .line 402
    invoke-direct {p0, p1}, Lcom/android/updater/UpdaterBackgroundService$UpdateCheckTask;->showNotification(Lcom/android/updater/customTypes/FullUpdateInfo;)V

    .line 403
    invoke-direct {p0, p1}, Lcom/android/updater/UpdaterBackgroundService$UpdateCheckTask;->showDialog(Lcom/android/updater/customTypes/FullUpdateInfo;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 370
    check-cast p1, Lcom/android/updater/customTypes/FullUpdateInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/updater/UpdaterBackgroundService$UpdateCheckTask;->onPostExecute(Lcom/android/updater/customTypes/FullUpdateInfo;)V

    return-void
.end method
