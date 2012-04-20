.class Lcom/android/fileexplorer/FileOperationHelper$3;
.super Landroid/os/AsyncTask;
.source "FileOperationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/FileOperationHelper;->asnycExecute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/FileOperationHelper;

.field final synthetic val$_r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/FileOperationHelper;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/fileexplorer/FileOperationHelper$3;->this$0:Lcom/android/fileexplorer/FileOperationHelper;

    iput-object p2, p0, Lcom/android/fileexplorer/FileOperationHelper$3;->val$_r:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "params"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/fileexplorer/FileOperationHelper$3;->this$0:Lcom/android/fileexplorer/FileOperationHelper;

    #getter for: Lcom/android/fileexplorer/FileOperationHelper;->mCurFileNameList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/fileexplorer/FileOperationHelper;->access$000(Lcom/android/fileexplorer/FileOperationHelper;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileOperationHelper$3;->val$_r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 147
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iget-object v0, p0, Lcom/android/fileexplorer/FileOperationHelper$3;->this$0:Lcom/android/fileexplorer/FileOperationHelper;

    #getter for: Lcom/android/fileexplorer/FileOperationHelper;->mOperationListener:Lcom/android/fileexplorer/FileOperationHelper$IOperationProgressListener;
    invoke-static {v0}, Lcom/android/fileexplorer/FileOperationHelper;->access$200(Lcom/android/fileexplorer/FileOperationHelper;)Lcom/android/fileexplorer/FileOperationHelper$IOperationProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/fileexplorer/FileOperationHelper$3;->this$0:Lcom/android/fileexplorer/FileOperationHelper;

    #getter for: Lcom/android/fileexplorer/FileOperationHelper;->mOperationListener:Lcom/android/fileexplorer/FileOperationHelper$IOperationProgressListener;
    invoke-static {v0}, Lcom/android/fileexplorer/FileOperationHelper;->access$200(Lcom/android/fileexplorer/FileOperationHelper;)Lcom/android/fileexplorer/FileOperationHelper$IOperationProgressListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/fileexplorer/FileOperationHelper$IOperationProgressListener;->onFinish()V

    .line 152
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 147
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
