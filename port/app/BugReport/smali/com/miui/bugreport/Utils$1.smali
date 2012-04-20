.class final Lcom/miui/bugreport/Utils$1;
.super Landroid/os/AsyncTask;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/bugreport/Utils;->asyncExecute(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field final synthetic val$_context:Landroid/content/Context;

.field final synthetic val$_enableDialog:Z

.field final synthetic val$_msg:Ljava/lang/String;

.field final synthetic val$_r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/miui/bugreport/Utils$1;->val$_enableDialog:Z

    iput-object p2, p0, Lcom/miui/bugreport/Utils$1;->val$_context:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/bugreport/Utils$1;->val$_msg:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/bugreport/Utils$1;->val$_r:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "params"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/miui/bugreport/Utils$1;->val$_r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/miui/bugreport/Utils$1;->val$_enableDialog:Z

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/miui/bugreport/Utils$1;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/bugreport/Utils$1;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/miui/bugreport/Utils$1;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/bugreport/Utils$1;->dialog:Landroid/app/ProgressDialog;

    .line 149
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/miui/bugreport/Utils$1;->val$_enableDialog:Z

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/bugreport/Utils$1;->val$_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/bugreport/Utils$1;->dialog:Landroid/app/ProgressDialog;

    .line 128
    iget-object v0, p0, Lcom/miui/bugreport/Utils$1;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/bugreport/Utils$1;->val$_msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/miui/bugreport/Utils$1;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 130
    iget-object v0, p0, Lcom/miui/bugreport/Utils$1;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 131
    iget-object v0, p0, Lcom/miui/bugreport/Utils$1;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 133
    :cond_0
    return-void
.end method
