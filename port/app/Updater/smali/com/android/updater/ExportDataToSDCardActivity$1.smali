.class Lcom/android/updater/ExportDataToSDCardActivity$1;
.super Lmiui/os/AsyncTaskWithProgress;
.source "ExportDataToSDCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/ExportDataToSDCardActivity;->moveInternalDataToSDCard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/os/AsyncTaskWithProgress",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/ExportDataToSDCardActivity;

.field final synthetic val$requiredSize:J


# direct methods
.method constructor <init>(Lcom/android/updater/ExportDataToSDCardActivity;Landroid/content/Context;IIZJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/updater/ExportDataToSDCardActivity$1;->this$0:Lcom/android/updater/ExportDataToSDCardActivity;

    iput-wide p6, p0, Lcom/android/updater/ExportDataToSDCardActivity$1;->val$requiredSize:J

    invoke-direct {p0, p2, p3, p4, p5}, Lmiui/os/AsyncTaskWithProgress;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/updater/ExportDataToSDCardActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 72
    const-string v1, "root"

    const-string v2, "busybox chmod -R 0777 %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lmiui/os/Environment;->getInternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v5, v1, v2, v3}, Lmiui/util/CommandLineUtils;->run(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 76
    invoke-static {}, Lmiui/os/Environment;->getInternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/android/updater/ExportDataToSDCardActivity$1;->mDialog:Landroid/app/ProgressDialog;

    #calls: Lcom/android/updater/ExportDataToSDCardActivity;->moveData(Ljava/io/File;Ljava/io/File;ZLandroid/app/ProgressDialog;)V
    invoke-static {v1, v2, v5, v3}, Lcom/android/updater/ExportDataToSDCardActivity;->access$000(Ljava/io/File;Ljava/io/File;ZLandroid/app/ProgressDialog;)V

    .line 80
    invoke-static {}, Lmiui/os/Environment;->getInternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const/16 v2, 0x1ff

    invoke-static {v1, v2, v6, v6}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.providers.media"

    const-string v2, "com.android.providers.media.MediaScannerReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lmiui/os/Environment;->getInternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lcom/android/updater/ExportDataToSDCardActivity$1;->this$0:Lcom/android/updater/ExportDataToSDCardActivity;

    invoke-virtual {v1, v0}, Lcom/android/updater/ExportDataToSDCardActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, Lcom/android/updater/ExportDataToSDCardActivity$1;->this$0:Lcom/android/updater/ExportDataToSDCardActivity;

    invoke-virtual {v1, v0}, Lcom/android/updater/ExportDataToSDCardActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 92
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/updater/ExportDataToSDCardActivity$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 97
    invoke-super {p0, p1}, Lmiui/os/AsyncTaskWithProgress;->onPostExecute(Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/android/updater/ExportDataToSDCardActivity$1;->this$0:Lcom/android/updater/ExportDataToSDCardActivity;

    invoke-virtual {v0}, Lcom/android/updater/ExportDataToSDCardActivity;->finish()V

    .line 99
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    iget-object v0, p0, Lcom/android/updater/ExportDataToSDCardActivity$1;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 62
    iget-object v0, p0, Lcom/android/updater/ExportDataToSDCardActivity$1;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 63
    iget-object v0, p0, Lcom/android/updater/ExportDataToSDCardActivity$1;->mDialog:Landroid/app/ProgressDialog;

    iget-wide v1, p0, Lcom/android/updater/ExportDataToSDCardActivity$1;->val$requiredSize:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 64
    iget-object v0, p0, Lcom/android/updater/ExportDataToSDCardActivity$1;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 65
    invoke-super {p0}, Lmiui/os/AsyncTaskWithProgress;->onPreExecute()V

    .line 66
    iget-object v0, p0, Lcom/android/updater/ExportDataToSDCardActivity$1;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/updater/ExportDataToSDCardActivity$1;->this$0:Lcom/android/updater/ExportDataToSDCardActivity;

    const v2, 0x7f050058

    invoke-virtual {v1, v2}, Lcom/android/updater/ExportDataToSDCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 68
    return-void
.end method
