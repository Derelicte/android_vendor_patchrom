.class public Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;
.super Landroid/os/AsyncTask;
.source "FindlostContactSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/ui/FindlostContactSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FindlostTask"
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
.field protected mComputeProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;


# direct methods
.method protected constructor <init>(Lcom/miui/milk/ui/FindlostContactSelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 347
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    #getter for: Lcom/miui/milk/ui/FindlostContactSelectActivity;->mService:Lcom/miui/milk/service/CloudBackupService;
    invoke-static {v0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$100(Lcom/miui/milk/ui/FindlostContactSelectActivity;)Lcom/miui/milk/service/CloudBackupService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    iget-object v1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    #getter for: Lcom/miui/milk/ui/FindlostContactSelectActivity;->mService:Lcom/miui/milk/service/CloudBackupService;
    invoke-static {v1}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$100(Lcom/miui/milk/ui/FindlostContactSelectActivity;)Lcom/miui/milk/service/CloudBackupService;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    iget-object v2, v2, Lcom/miui/milk/ui/FindlostContactSelectActivity;->mCallback:Lcom/miui/milk/control/callback/AsyncTaskCallback;

    invoke-virtual {v1, v2}, Lcom/miui/milk/service/CloudBackupService;->getFindlostAddressBook(Lcom/miui/milk/control/callback/AsyncTaskCallback;)Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v1

    #setter for: Lcom/miui/milk/ui/FindlostContactSelectActivity;->mAddressBook:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    invoke-static {v0, v1}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$302(Lcom/miui/milk/ui/FindlostContactSelectActivity;Lcom/miui/milk/model/ContactProtos2$AddressBook;)Lcom/miui/milk/model/ContactProtos2$AddressBook;

    .line 370
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 347
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 375
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    #calls: Lcom/miui/milk/ui/FindlostContactSelectActivity;->notifyState()V
    invoke-static {v0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$400(Lcom/miui/milk/ui/FindlostContactSelectActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    const-string v1, ""

    iget-object v2, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    const v3, 0x7f070042

    invoke-virtual {v2, v3}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->mComputeProgressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 364
    return-void

    .line 360
    :catch_0
    move-exception v0

    goto :goto_0
.end method
