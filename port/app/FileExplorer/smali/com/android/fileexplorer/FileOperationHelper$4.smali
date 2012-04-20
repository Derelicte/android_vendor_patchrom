.class Lcom/android/fileexplorer/FileOperationHelper$4;
.super Ljava/lang/Object;
.source "FileOperationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/FileOperationHelper;->Delete(Ljava/util/ArrayList;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/FileOperationHelper;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/FileOperationHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/fileexplorer/FileOperationHelper$4;->this$0:Lcom/android/fileexplorer/FileOperationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 196
    iget-object v2, p0, Lcom/android/fileexplorer/FileOperationHelper$4;->this$0:Lcom/android/fileexplorer/FileOperationHelper;

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

    .line 197
    .local v0, f:Lcom/android/fileexplorer/FileInfo;
    iget-object v2, p0, Lcom/android/fileexplorer/FileOperationHelper$4;->this$0:Lcom/android/fileexplorer/FileOperationHelper;

    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/FileOperationHelper;->DeleteFile(Lcom/android/fileexplorer/FileInfo;)V

    goto :goto_0

    .line 200
    .end local v0           #f:Lcom/android/fileexplorer/FileInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/fileexplorer/FileOperationHelper$4;->this$0:Lcom/android/fileexplorer/FileOperationHelper;

    #getter for: Lcom/android/fileexplorer/FileOperationHelper;->mOperationListener:Lcom/android/fileexplorer/FileOperationHelper$IOperationProgressListener;
    invoke-static {v2}, Lcom/android/fileexplorer/FileOperationHelper;->access$200(Lcom/android/fileexplorer/FileOperationHelper;)Lcom/android/fileexplorer/FileOperationHelper$IOperationProgressListener;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/fileexplorer/FileOperationHelper$IOperationProgressListener;->onFileChanged(Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lcom/android/fileexplorer/FileOperationHelper$4;->this$0:Lcom/android/fileexplorer/FileOperationHelper;

    invoke-virtual {v2}, Lcom/android/fileexplorer/FileOperationHelper;->clear()V

    .line 205
    return-void
.end method
