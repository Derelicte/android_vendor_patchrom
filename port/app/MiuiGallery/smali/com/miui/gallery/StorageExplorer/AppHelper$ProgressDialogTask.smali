.class public Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;
.super Landroid/os/AsyncTask;
.source "AppHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/StorageExplorer/AppHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressDialogTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field private mBackground:Ljava/lang/Runnable;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mPostExecute:Ljava/lang/Runnable;

.field private mPreExecute:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/ProgressDialog;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "dialog"
    .parameter "preExecute"
    .parameter "background"
    .parameter "postExecute"

    .prologue
    .line 271
    .local p0, this:Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;,"Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 272
    iput-object p1, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;->mDialog:Landroid/app/ProgressDialog;

    .line 273
    iput-object p2, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;->mPreExecute:Ljava/lang/Runnable;

    .line 274
    iput-object p3, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;->mBackground:Ljava/lang/Runnable;

    .line 275
    iput-object p4, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;->mPostExecute:Ljava/lang/Runnable;

    .line 277
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;->mDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask$1;-><init>(Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 285
    :cond_0
    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 323
    .local p0, this:Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;,"Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask<TParams;TProgress;TResult;>;"
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, this:Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;,"Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask<TParams;TProgress;TResult;>;"
    .local p1, params:[Ljava/lang/Object;,"[TParams;"
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;->mBackground:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;->mBackground:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 296
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCancelled()V
    .locals 1

    .prologue
    .line 307
    .local p0, this:Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;,"Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;->mPostExecute:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;->mPostExecute:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 308
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;->dismissDialog()V

    .line 309
    return-void
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, this:Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;,"Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;->mPostExecute:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;->mPostExecute:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 302
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;->dismissDialog()V

    .line 303
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 289
    .local p0, this:Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;,"Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;->mPreExecute:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;->mPreExecute:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 291
    :cond_1
    return-void
.end method
