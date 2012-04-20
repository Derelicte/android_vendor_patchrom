.class Lcom/android/providers/downloads/ui/DownloadList$8;
.super Landroid/os/AsyncTask;
.source "DownloadList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadList;->doDeleteDownloads(Z[Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadList;

.field final synthetic val$deleteFile:Z

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$downloadIds:[Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;[Ljava/lang/Long;ZLandroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 726
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$8;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    iput-object p2, p0, Lcom/android/providers/downloads/ui/DownloadList$8;->val$downloadIds:[Ljava/lang/Long;

    iput-boolean p3, p0, Lcom/android/providers/downloads/ui/DownloadList$8;->val$deleteFile:Z

    iput-object p4, p0, Lcom/android/providers/downloads/ui/DownloadList$8;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 6
    .parameter "params"

    .prologue
    .line 729
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList$8;->val$downloadIds:[Ljava/lang/Long;

    array-length v2, v2

    if-gtz v2, :cond_0

    .line 730
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 738
    :goto_0
    return-object v2

    .line 732
    :cond_0
    const/4 v0, 0x0

    .line 733
    .local v0, index:I
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList$8;->val$downloadIds:[Ljava/lang/Long;

    array-length v1, v2

    .line 734
    .local v1, size:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 735
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList$8;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList$8;->val$downloadIds:[Ljava/lang/Long;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-boolean v5, p0, Lcom/android/providers/downloads/ui/DownloadList$8;->val$deleteFile:Z

    #calls: Lcom/android/providers/downloads/ui/DownloadList;->deleteDownload(JZ)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/providers/downloads/ui/DownloadList;->access$1300(Lcom/android/providers/downloads/ui/DownloadList;JZ)V

    .line 736
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList$8;->publishProgress([Ljava/lang/Object;)V

    .line 734
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 738
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 726
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList$8;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 750
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$8;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadList;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 760
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$8;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #calls: Lcom/android/providers/downloads/ui/DownloadList;->refresh()V
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$1800(Lcom/android/providers/downloads/ui/DownloadList;)V

    .line 754
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$8;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 755
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$8;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$8;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 726
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList$8;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 5
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 743
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 744
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$8;->val$dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$8;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aget-object v3, p1, v4

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 746
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 726
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList$8;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
