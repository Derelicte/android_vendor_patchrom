.class public Lcom/miui/milk/ui/CloudBaseFragment;
.super Landroid/app/Fragment;
.source "CloudBaseFragment.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;
.implements Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;"
    }
.end annotation


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mIsBound:Z

.field protected mLoginLayout:Landroid/view/View;

.field protected mLogoutLayout:Landroid/view/View;

.field protected mNetWorkErrorDialog:Landroid/app/Dialog;

.field private mService:Lcom/miui/milk/service/CloudBackupService;

.field private mToast:Landroid/widget/Toast;

.field protected refreshRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 157
    new-instance v0, Lcom/miui/milk/ui/CloudBaseFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/milk/ui/CloudBaseFragment$4;-><init>(Lcom/miui/milk/ui/CloudBaseFragment;)V

    iput-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->refreshRunnable:Ljava/lang/Runnable;

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mIsBound:Z

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mService:Lcom/miui/milk/service/CloudBackupService;

    .line 268
    new-instance v0, Lcom/miui/milk/ui/CloudBaseFragment$6;

    invoke-direct {v0, p0}, Lcom/miui/milk/ui/CloudBaseFragment$6;-><init>(Lcom/miui/milk/ui/CloudBaseFragment;)V

    iput-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/milk/ui/CloudBaseFragment;Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/service/CloudBackupService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mService:Lcom/miui/milk/service/CloudBackupService;

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBaseFragment;->leave()V

    .line 100
    return-void
.end method

.method protected doBackup(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/common/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mService:Lcom/miui/milk/service/CloudBackupService;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mService:Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v0}, Lcom/miui/milk/service/CloudBackupService;->taskIsRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f070057

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 230
    :goto_0
    return-void

    .line 220
    :cond_0
    const-wide/16 v0, 0x0

    .line 222
    iget-object v2, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mService:Lcom/miui/milk/service/CloudBackupService;

    if-eqz v2, :cond_1

    .line 223
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mService:Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v0, p1}, Lcom/miui/milk/service/CloudBackupService;->runBackup(Ljava/util/ArrayList;)J

    move-result-wide v0

    .line 227
    :cond_1
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/miui/milk/ui/ProgressPageActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    const-string v3, "TASK_ID"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 229
    invoke-virtual {p0, v2}, Lcom/miui/milk/ui/CloudBaseFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method doBindService(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 290
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/milk/service/CloudBackupService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 292
    iget-object v1, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mIsBound:Z

    .line 293
    return-void
.end method

.method public doRestore()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method protected doRestore(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/common/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    const-wide/16 v0, 0x0

    .line 202
    iget-object v2, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mService:Lcom/miui/milk/service/CloudBackupService;

    if-eqz v2, :cond_0

    .line 203
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mService:Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v0, p1}, Lcom/miui/milk/service/CloudBackupService;->runRestore(Ljava/util/ArrayList;)J

    move-result-wide v0

    .line 207
    :cond_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/miui/milk/ui/ProgressPageActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    const-string v3, "TASK_ID"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v2}, Lcom/miui/milk/ui/CloudBaseFragment;->startActivity(Landroid/content/Intent;)V

    .line 210
    return-void
.end method

.method doUnbindService(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mIsBound:Z

    .line 301
    :cond_0
    return-void
.end method

.method protected isSdcardLimit()Z
    .locals 3

    .prologue
    .line 76
    const-wide/32 v0, 0x100000

    invoke-static {v0, v1}, Lcom/miui/backup/SysUtils;->enoughSpaceOnData(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    .line 79
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/miui/backup/ui/ExceptionAlertActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    const-string v1, "exception_message"

    const v2, 0x7f070055

    invoke-virtual {p0, v2}, Lcom/miui/milk/ui/CloudBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBaseFragment;->startActivity(Landroid/content/Intent;)V

    .line 82
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public leave()V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/miui/milk/ui/CloudBackupInfo;->reset()V

    .line 56
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 57
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBaseFragment;->setHasOptionsMenu(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    .line 48
    const v0, 0x7f070028

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/milk/common/Constants;->PROMPT_READING:Ljava/lang/String;

    .line 49
    const v0, 0x7f070029

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/milk/common/Constants;->PROMPT_SENDING:Ljava/lang/String;

    .line 50
    const v0, 0x7f07002a

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/milk/common/Constants;->PROMPT_WRITING:Ljava/lang/String;

    .line 51
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBaseFragment;->doUnbindService(Landroid/content/Context;)V

    .line 185
    invoke-static {}, Lcom/miui/milk/ui/CloudBackupInfo;->reset()V

    .line 187
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    invoke-virtual {v0}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    invoke-virtual {v0}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->dismissDialog()V

    .line 189
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->cancel(Z)Z

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    .line 192
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 193
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBaseFragment;->doBindService(Landroid/content/Context;)V

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBaseFragment;->refreshUI(Z)Z

    .line 178
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 179
    return-void
.end method

.method public refreshBackupInfo()V
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBaseFragment;->refreshUI(Z)Z

    .line 105
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshUI(Z)Z
    .locals 7
    .parameter "requestError"

    .prologue
    const/4 v3, 0x1

    .line 109
    iget-object v4, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/miui/milk/util/SysHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_5

    .line 110
    :cond_0
    iget-object v4, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mNetWorkErrorDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mNetWorkErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_3

    .line 111
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 112
    .local v0, dialogBuilder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f07008e

    invoke-virtual {p0, v4}, Lcom/miui/milk/ui/CloudBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, errorString:Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    if-eqz v4, :cond_2

    .line 114
    iget-object v4, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    invoke-virtual {v4}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->getErrorStatusCode()I

    move-result v1

    .line 115
    .local v1, errorStatusCode:I
    if-lez v1, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/miui/milk/util/SysHelpers;->getNetworkErrorString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    .line 120
    .end local v1           #errorStatusCode:I
    :cond_2
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07008f

    new-instance v6, Lcom/miui/milk/ui/CloudBaseFragment$3;

    invoke-direct {v6, p0}, Lcom/miui/milk/ui/CloudBaseFragment$3;-><init>(Lcom/miui/milk/ui/CloudBaseFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070005

    new-instance v6, Lcom/miui/milk/ui/CloudBaseFragment$2;

    invoke-direct {v6, p0}, Lcom/miui/milk/ui/CloudBaseFragment$2;-><init>(Lcom/miui/milk/ui/CloudBaseFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/miui/milk/ui/CloudBaseFragment$1;

    invoke-direct {v5, p0}, Lcom/miui/milk/ui/CloudBaseFragment$1;-><init>(Lcom/miui/milk/ui/CloudBaseFragment;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 143
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mNetWorkErrorDialog:Landroid/app/Dialog;

    .line 144
    iget-object v4, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mNetWorkErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 151
    .end local v0           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v2           #errorString:Ljava/lang/String;
    :cond_3
    :goto_0
    sget-object v4, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    if-nez v4, :cond_4

    .line 152
    const/4 v3, 0x0

    .line 154
    :cond_4
    return v3

    .line 146
    :cond_5
    iget-object v4, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mNetWorkErrorDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    if-eqz v4, :cond_3

    .line 147
    iget-object v4, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mNetWorkErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 148
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mNetWorkErrorDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method protected restore(Z)V
    .locals 5
    .parameter "hasContact"

    .prologue
    .line 233
    iget-object v2, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/miui/milk/util/SysHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    const v2, 0x7f07008e

    invoke-virtual {p0, v2}, Lcom/miui/milk/ui/CloudBaseFragment;->showToast(I)V

    .line 261
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v2, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mService:Lcom/miui/milk/service/CloudBackupService;

    if-eqz v2, :cond_1

    .line 239
    iget-object v2, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mService:Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v2}, Lcom/miui/milk/service/CloudBackupService;->taskIsRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 240
    iget-object v2, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f070057

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 245
    :cond_1
    if-eqz p1, :cond_2

    .line 246
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 247
    .local v1, dialogBuilder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f070072

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070073

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07000d

    new-instance v4, Lcom/miui/milk/ui/CloudBaseFragment$5;

    invoke-direct {v4, p0}, Lcom/miui/milk/ui/CloudBaseFragment$5;-><init>(Lcom/miui/milk/ui/CloudBaseFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070005

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 256
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 257
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 259
    .end local v0           #dialog:Landroid/app/Dialog;
    .end local v1           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    :cond_2
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBaseFragment;->doRestore()V

    goto :goto_0
.end method

.method protected retryComputeBackupInfo()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBaseFragment;->retryComputeBackupInfo(Z)Z

    move-result v0

    return v0
.end method

.method protected retryComputeBackupInfo(Z)Z
    .locals 4
    .parameter "showDialog"

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v2, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/miui/milk/util/AccountUtil;->getAccountInfo(Landroid/content/Context;)Lcom/miui/milk/util/AccountUtil$AccountInfo;

    move-result-object v0

    .line 65
    .local v0, accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    iget-object v2, v0, Lcom/miui/milk/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/miui/milk/util/SysHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    new-instance v2, Lcom/miui/milk/ui/ComputeBackupInfoTask;

    iget-object v3, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, p0, p1}, Lcom/miui/milk/ui/ComputeBackupInfoTask;-><init>(Landroid/app/Activity;Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;Z)V

    iput-object v2, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    .line 67
    iget-object v2, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    const/4 v1, 0x1

    .line 72
    :goto_0
    return v1

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBaseFragment;->refreshBackupInfo()V

    goto :goto_0
.end method

.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 89
    iget-object v1, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/milk/util/AccountUtil;->getAccountInfo(Landroid/content/Context;)Lcom/miui/milk/util/AccountUtil$AccountInfo;

    move-result-object v0

    .line 90
    .local v0, accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    iget-object v1, v0, Lcom/miui/milk/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 91
    new-instance v1, Lcom/miui/milk/ui/ComputeBackupInfoTask;

    iget-object v2, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, v3}, Lcom/miui/milk/ui/ComputeBackupInfoTask;-><init>(Landroid/app/Activity;Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;Z)V

    iput-object v1, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    .line 92
    iget-object v1, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 95
    .end local v0           #accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    :cond_0
    return-void
.end method

.method protected showToast(I)V
    .locals 2
    .parameter "textId"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mToast:Landroid/widget/Toast;

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 172
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 169
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method
