.class public Lcom/android/updater/EmergencyUpdateActivity;
.super Landroid/app/Activity;
.source "EmergencyUpdateActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0, v8}, Lcom/android/updater/EmergencyUpdateActivity;->requestWindowFeature(I)Z

    .line 28
    invoke-virtual {p0}, Lcom/android/updater/EmergencyUpdateActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x20

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 29
    invoke-virtual {p0}, Lcom/android/updater/EmergencyUpdateActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x106000d

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 31
    invoke-virtual {p0}, Lcom/android/updater/EmergencyUpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 32
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "update_info"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/updater/customTypes/FullUpdateInfo;

    .line 33
    .local v0, fullUpdateInfo:Lcom/android/updater/customTypes/FullUpdateInfo;
    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/android/updater/EmergencyUpdateActivity;->finish()V

    .line 83
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {v0}, Lcom/android/updater/customTypes/FullUpdateInfo;->getUpdateInfo()Lcom/android/updater/customTypes/UpdateInfo;

    move-result-object v3

    .line 38
    .local v3, updateInfo:Lcom/android/updater/customTypes/UpdateInfo;
    if-nez v3, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/android/updater/EmergencyUpdateActivity;->finish()V

    goto :goto_0

    .line 43
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .local v2, message:Ljava/lang/StringBuilder;
    const v4, 0x7f05004f

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/android/updater/customTypes/UpdateInfo;->getFileSize()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/updater/EmergencyUpdateActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v3}, Lcom/android/updater/customTypes/UpdateInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 47
    invoke-virtual {v3}, Lcom/android/updater/customTypes/UpdateInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_2
    const v4, 0x7f05004e

    invoke-virtual {p0, v4}, Lcom/android/updater/EmergencyUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    new-instance v4, Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x3

    invoke-direct {v4, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/updater/customTypes/UpdateInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f050002

    new-instance v6, Lcom/android/updater/EmergencyUpdateActivity$3;

    invoke-direct {v6, p0, v3, v1}, Lcom/android/updater/EmergencyUpdateActivity$3;-><init>(Lcom/android/updater/EmergencyUpdateActivity;Lcom/android/updater/customTypes/UpdateInfo;Landroid/content/Intent;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f050005

    new-instance v6, Lcom/android/updater/EmergencyUpdateActivity$2;

    invoke-direct {v6, p0}, Lcom/android/updater/EmergencyUpdateActivity$2;-><init>(Lcom/android/updater/EmergencyUpdateActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/updater/EmergencyUpdateActivity$1;

    invoke-direct {v5, p0}, Lcom/android/updater/EmergencyUpdateActivity$1;-><init>(Lcom/android/updater/EmergencyUpdateActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method
