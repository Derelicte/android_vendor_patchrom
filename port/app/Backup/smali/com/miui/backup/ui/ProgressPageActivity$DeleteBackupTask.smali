.class Lcom/miui/backup/ui/ProgressPageActivity$DeleteBackupTask;
.super Landroid/os/AsyncTask;
.source "ProgressPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/ui/ProgressPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteBackupTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/backup/ui/ProgressPageActivity;


# direct methods
.method private constructor <init>(Lcom/miui/backup/ui/ProgressPageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/miui/backup/ui/ProgressPageActivity$DeleteBackupTask;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/backup/ui/ProgressPageActivity;Lcom/miui/backup/ui/ProgressPageActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/miui/backup/ui/ProgressPageActivity$DeleteBackupTask;-><init>(Lcom/miui/backup/ui/ProgressPageActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 368
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/backup/ui/ProgressPageActivity$DeleteBackupTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 376
    invoke-static {}, Lcom/miui/backup/ui/ProgressPageActivity;->access$300()Lcom/miui/backup/BackupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/backup/BackupService;->getBackupRestoreDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/backup/SysUtils;->deleteDir(Ljava/io/File;)V

    .line 377
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 368
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/backup/ui/ProgressPageActivity$DeleteBackupTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$DeleteBackupTask;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    #getter for: Lcom/miui/backup/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/miui/backup/ui/ProgressPageActivity;->access$600(Lcom/miui/backup/ui/ProgressPageActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$DeleteBackupTask;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    #getter for: Lcom/miui/backup/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/miui/backup/ui/ProgressPageActivity;->access$600(Lcom/miui/backup/ui/ProgressPageActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$DeleteBackupTask;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    #getter for: Lcom/miui/backup/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/miui/backup/ui/ProgressPageActivity;->access$600(Lcom/miui/backup/ui/ProgressPageActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 384
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$DeleteBackupTask;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    invoke-virtual {v0}, Lcom/miui/backup/ui/ProgressPageActivity;->finish()V

    .line 387
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 372
    return-void
.end method
