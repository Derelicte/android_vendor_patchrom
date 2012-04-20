.class Lcom/android/updater/BaseFragment$MD5CheckerTask;
.super Landroid/os/AsyncTask;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MD5CheckerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/io/File;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChecksum:Ljava/lang/String;

.field private final mDialog:Landroid/app/ProgressDialog;

.field private mFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/updater/BaseFragment;


# direct methods
.method public constructor <init>(Lcom/android/updater/BaseFragment;Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "dialog"
    .parameter "checksum"

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/updater/BaseFragment$MD5CheckerTask;->this$0:Lcom/android/updater/BaseFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 384
    iput-object p2, p0, Lcom/android/updater/BaseFragment$MD5CheckerTask;->mDialog:Landroid/app/ProgressDialog;

    .line 385
    iput-object p3, p0, Lcom/android/updater/BaseFragment$MD5CheckerTask;->mChecksum:Ljava/lang/String;

    .line 386
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/io/File;)Ljava/lang/Boolean;
    .locals 2
    .parameter "params"

    .prologue
    const/4 v1, 0x0

    .line 442
    aget-object v0, p1, v1

    iput-object v0, p0, Lcom/android/updater/BaseFragment$MD5CheckerTask;->mFile:Ljava/io/File;

    .line 443
    iget-object v0, p0, Lcom/android/updater/BaseFragment$MD5CheckerTask;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/updater/BaseFragment$MD5CheckerTask;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/updater/BaseFragment$MD5CheckerTask;->mChecksum:Ljava/lang/String;

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/android/updater/utils/MD5;->checkMD5(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 447
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 376
    check-cast p1, [Ljava/io/File;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/updater/BaseFragment$MD5CheckerTask;->doInBackground([Ljava/io/File;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onCancelled()V
    .locals 3

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/updater/BaseFragment$MD5CheckerTask;->this$0:Lcom/android/updater/BaseFragment;

    iget-object v0, v0, Lcom/android/updater/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/updater/BaseFragment$MD5CheckerTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 437
    iget-object v0, p0, Lcom/android/updater/BaseFragment$MD5CheckerTask;->this$0:Lcom/android/updater/BaseFragment;

    iget-object v0, v0, Lcom/android/updater/BaseFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f050032

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 401
    :try_start_0
    iget-object v2, p0, Lcom/android/updater/BaseFragment$MD5CheckerTask;->this$0:Lcom/android/updater/BaseFragment;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    #setter for: Lcom/android/updater/BaseFragment;->mMD5CheckResult:Z
    invoke-static {v2, v3}, Lcom/android/updater/BaseFragment;->access$102(Lcom/android/updater/BaseFragment;Z)Z

    .line 402
    iget-object v2, p0, Lcom/android/updater/BaseFragment$MD5CheckerTask;->this$0:Lcom/android/updater/BaseFragment;

    const/4 v3, 0x0

    #setter for: Lcom/android/updater/BaseFragment;->mMD5CheckerTask:Lcom/android/updater/BaseFragment$MD5CheckerTask;
    invoke-static {v2, v3}, Lcom/android/updater/BaseFragment;->access$202(Lcom/android/updater/BaseFragment;Lcom/android/updater/BaseFragment$MD5CheckerTask;)Lcom/android/updater/BaseFragment$MD5CheckerTask;

    .line 403
    iget-object v2, p0, Lcom/android/updater/BaseFragment$MD5CheckerTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 405
    if-nez p1, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    const/4 v1, -0x1

    .line 411
    .local v1, mode:I
    iget-object v2, p0, Lcom/android/updater/BaseFragment$MD5CheckerTask;->this$0:Lcom/android/updater/BaseFragment;

    #getter for: Lcom/android/updater/BaseFragment;->mMD5CheckResult:Z
    invoke-static {v2}, Lcom/android/updater/BaseFragment;->access$100(Lcom/android/updater/BaseFragment;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 412
    const/4 v1, 0x1

    .line 413
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/updater/BaseFragment$MD5CheckerTask;->this$0:Lcom/android/updater/BaseFragment;

    iget-object v2, v2, Lcom/android/updater/BaseFragment;->mUpdateFolder:Ljava/io/File;

    iget-object v3, p0, Lcom/android/updater/BaseFragment$MD5CheckerTask;->this$0:Lcom/android/updater/BaseFragment;

    iget-object v3, v3, Lcom/android/updater/BaseFragment;->mThisInfo:Lcom/android/updater/customTypes/UpdateInfo;

    invoke-virtual {v3}, Lcom/android/updater/customTypes/UpdateInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 414
    .local v0, downloadedRom:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 415
    const/4 v1, 0x3

    .line 416
    iget-object v2, p0, Lcom/android/updater/BaseFragment$MD5CheckerTask;->this$0:Lcom/android/updater/BaseFragment;

    iget-object v3, p0, Lcom/android/updater/BaseFragment$MD5CheckerTask;->mFile:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/android/updater/BaseFragment;->mUpdateFile:Landroid/net/Uri;

    .line 423
    .end local v0           #downloadedRom:Ljava/io/File;
    :cond_2
    :goto_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 424
    iget-object v2, p0, Lcom/android/updater/BaseFragment$MD5CheckerTask;->this$0:Lcom/android/updater/BaseFragment;

    invoke-virtual {v2, v1}, Lcom/android/updater/BaseFragment;->updateMode(I)V

    goto :goto_0

    .line 426
    .end local v1           #mode:I
    :catch_0
    move-exception v2

    goto :goto_0

    .line 419
    .restart local v1       #mode:I
    :cond_3
    iget-object v2, p0, Lcom/android/updater/BaseFragment$MD5CheckerTask;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 420
    const/4 v1, 0x1

    .line 421
    iget-object v2, p0, Lcom/android/updater/BaseFragment$MD5CheckerTask;->this$0:Lcom/android/updater/BaseFragment;

    iget-object v2, v2, Lcom/android/updater/BaseFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f050028

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 376
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/updater/BaseFragment$MD5CheckerTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/android/updater/BaseFragment$MD5CheckerTask;->this$0:Lcom/android/updater/BaseFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/updater/BaseFragment;->mMD5CheckResult:Z
    invoke-static {v0, v1}, Lcom/android/updater/BaseFragment;->access$102(Lcom/android/updater/BaseFragment;Z)Z

    .line 392
    iget-object v0, p0, Lcom/android/updater/BaseFragment$MD5CheckerTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_0
    return-void

    .line 393
    :catch_0
    move-exception v0

    goto :goto_0
.end method
