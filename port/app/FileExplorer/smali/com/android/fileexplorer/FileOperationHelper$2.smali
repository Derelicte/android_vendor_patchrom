.class Lcom/android/fileexplorer/FileOperationHelper$2;
.super Ljava/lang/Object;
.source "FileOperationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/FileOperationHelper;->EndMove(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/FileOperationHelper;

.field final synthetic val$_path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/FileOperationHelper;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/fileexplorer/FileOperationHelper$2;->this$0:Lcom/android/fileexplorer/FileOperationHelper;

    iput-object p2, p0, Lcom/android/fileexplorer/FileOperationHelper$2;->val$_path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 121
    iget-object v2, p0, Lcom/android/fileexplorer/FileOperationHelper$2;->this$0:Lcom/android/fileexplorer/FileOperationHelper;

    #getter for: Lcom/android/fileexplorer/FileOperationHelper;->mCurFileNameList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/fileexplorer/FileOperationHelper;->access$000(Lcom/android/fileexplorer/FileOperationHelper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileInfo;

    .line 122
    .local v0, f:Lcom/android/fileexplorer/FileInfo;
    iget-object v2, p0, Lcom/android/fileexplorer/FileOperationHelper$2;->this$0:Lcom/android/fileexplorer/FileOperationHelper;

    iget-object v3, p0, Lcom/android/fileexplorer/FileOperationHelper$2;->val$_path:Ljava/lang/String;

    #calls: Lcom/android/fileexplorer/FileOperationHelper;->MoveFile(Lcom/android/fileexplorer/FileInfo;Ljava/lang/String;)Z
    invoke-static {v2, v0, v3}, Lcom/android/fileexplorer/FileOperationHelper;->access$300(Lcom/android/fileexplorer/FileOperationHelper;Lcom/android/fileexplorer/FileInfo;Ljava/lang/String;)Z

    goto :goto_0

    .line 125
    .end local v0           #f:Lcom/android/fileexplorer/FileInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/fileexplorer/FileOperationHelper$2;->this$0:Lcom/android/fileexplorer/FileOperationHelper;

    #getter for: Lcom/android/fileexplorer/FileOperationHelper;->mOperationListener:Lcom/android/fileexplorer/FileOperationHelper$IOperationProgressListener;
    invoke-static {v2}, Lcom/android/fileexplorer/FileOperationHelper;->access$200(Lcom/android/fileexplorer/FileOperationHelper;)Lcom/android/fileexplorer/FileOperationHelper$IOperationProgressListener;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/fileexplorer/FileOperationHelper$IOperationProgressListener;->onFileChanged(Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/android/fileexplorer/FileOperationHelper$2;->this$0:Lcom/android/fileexplorer/FileOperationHelper;

    invoke-virtual {v2}, Lcom/android/fileexplorer/FileOperationHelper;->clear()V

    .line 130
    return-void
.end method
