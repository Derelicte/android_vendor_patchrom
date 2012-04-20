.class Lcom/miui/backup/ui/LocalBackupFragment$BatchDeleteBackupTask;
.super Landroid/os/AsyncTask;
.source "LocalBackupFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/ui/LocalBackupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatchDeleteBackupTask"
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
.field private mCheckedIds:[J

.field private mDeleteProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/miui/backup/ui/LocalBackupFragment;


# direct methods
.method public constructor <init>(Lcom/miui/backup/ui/LocalBackupFragment;[J)V
    .locals 0
    .parameter
    .parameter "checkedIds"

    .prologue
    .line 531
    iput-object p1, p0, Lcom/miui/backup/ui/LocalBackupFragment$BatchDeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 532
    iput-object p2, p0, Lcom/miui/backup/ui/LocalBackupFragment$BatchDeleteBackupTask;->mCheckedIds:[J

    .line 533
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 527
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/backup/ui/LocalBackupFragment$BatchDeleteBackupTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x0

    .line 549
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/miui/backup/ui/LocalBackupFragment$BatchDeleteBackupTask;->mCheckedIds:[J

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 550
    iget-object v3, p0, Lcom/miui/backup/ui/LocalBackupFragment$BatchDeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupFragment;

    #getter for: Lcom/miui/backup/ui/LocalBackupFragment;->mBackupList:Ljava/util/List;
    invoke-static {v3}, Lcom/miui/backup/ui/LocalBackupFragment;->access$200(Lcom/miui/backup/ui/LocalBackupFragment;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/backup/ui/LocalBackupFragment$BatchDeleteBackupTask;->mCheckedIds:[J

    aget-wide v4, v4, v2

    long-to-int v4, v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;

    const-string v4, "fileName"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 551
    .local v1, backupName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 552
    .local v0, backupDir:Ljava/io/File;
    invoke-static {v0}, Lcom/miui/backup/SysUtils;->deleteDir(Ljava/io/File;)V

    .line 549
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 554
    .end local v0           #backupDir:Ljava/io/File;
    .end local v1           #backupName:Ljava/lang/String;
    :cond_0
    iput-object v6, p0, Lcom/miui/backup/ui/LocalBackupFragment$BatchDeleteBackupTask;->mCheckedIds:[J

    .line 555
    return-object v6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 527
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/backup/ui/LocalBackupFragment$BatchDeleteBackupTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 561
    :try_start_0
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment$BatchDeleteBackupTask;->mDeleteProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment$BatchDeleteBackupTask;->mDeleteProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment$BatchDeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupFragment;

    #getter for: Lcom/miui/backup/ui/LocalBackupFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/miui/backup/ui/LocalBackupFragment;->access$300(Lcom/miui/backup/ui/LocalBackupFragment;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 565
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment$BatchDeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupFragment;

    #getter for: Lcom/miui/backup/ui/LocalBackupFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/miui/backup/ui/LocalBackupFragment;->access$300(Lcom/miui/backup/ui/LocalBackupFragment;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment$BatchDeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupFragment;

    #calls: Lcom/miui/backup/ui/LocalBackupFragment;->refreshBackupList()V
    invoke-static {v0}, Lcom/miui/backup/ui/LocalBackupFragment;->access$400(Lcom/miui/backup/ui/LocalBackupFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :goto_0
    return-void

    .line 568
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 538
    :try_start_0
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment$BatchDeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupFragment;

    #getter for: Lcom/miui/backup/ui/LocalBackupFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/miui/backup/ui/LocalBackupFragment;->access$300(Lcom/miui/backup/ui/LocalBackupFragment;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 539
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment$BatchDeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupFragment;

    #getter for: Lcom/miui/backup/ui/LocalBackupFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/miui/backup/ui/LocalBackupFragment;->access$100(Lcom/miui/backup/ui/LocalBackupFragment;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/miui/backup/ui/LocalBackupFragment$BatchDeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupFragment;

    const v3, 0x7f070016

    invoke-virtual {v2, v3}, Lcom/miui/backup/ui/LocalBackupFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment$BatchDeleteBackupTask;->mDeleteProgressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :goto_0
    return-void

    .line 543
    :catch_0
    move-exception v0

    goto :goto_0
.end method
