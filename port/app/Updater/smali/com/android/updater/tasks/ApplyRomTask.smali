.class public Lcom/android/updater/tasks/ApplyRomTask;
.super Lmiui/os/AsyncTaskWithProgress;
.source "ApplyRomTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/updater/tasks/ApplyRomTask$ApplyRomFile;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/os/AsyncTaskWithProgress",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/app/ProgressDialog;Landroid/content/Context;)V
    .locals 0
    .parameter "dialog"
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lmiui/os/AsyncTaskWithProgress;-><init>(Landroid/app/ProgressDialog;)V

    .line 20
    iput-object p2, p0, Lcom/android/updater/tasks/ApplyRomTask;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .parameter "params"

    .prologue
    .line 25
    const/4 v2, 0x0

    aget-object v0, p1, v2

    .line 26
    .local v0, path:Ljava/lang/String;
    const/4 v1, 0x0

    .line 28
    .local v1, result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/updater/tasks/ApplyRomTask;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/updater/tasks/ApplyRomTask$ApplyRomFile;

    invoke-direct {v3, v0}, Lcom/android/updater/tasks/ApplyRomTask$ApplyRomFile;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    const/4 v1, 0x1

    .line 33
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 30
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/updater/tasks/ApplyRomTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 38
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/updater/tasks/ApplyRomTask;->mContext:Landroid/content/Context;

    const v1, 0x7f050017

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 42
    :cond_0
    invoke-super {p0, p1}, Lmiui/os/AsyncTaskWithProgress;->onPostExecute(Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/updater/tasks/ApplyRomTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
