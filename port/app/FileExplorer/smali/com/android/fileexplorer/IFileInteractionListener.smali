.class public interface abstract Lcom/android/fileexplorer/IFileInteractionListener;
.super Ljava/lang/Object;
.source "IFileInteractionListener.java"


# virtual methods
.method public abstract addSingleFile(Lcom/android/fileexplorer/FileInfo;)V
.end method

.method public abstract getAllFiles()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/fileexplorer/FileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDisplayPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getFileIconHelper()Lcom/android/fileexplorer/FileIconHelper;
.end method

.method public abstract getItem(I)Lcom/android/fileexplorer/FileInfo;
.end method

.method public abstract getItemCount()I
.end method

.method public abstract getRealPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getViewById(I)Landroid/view/View;
.end method

.method public abstract onDataChanged()V
.end method

.method public abstract onNavigation(Ljava/lang/String;)Z
.end method

.method public abstract onOperation(I)Z
.end method

.method public abstract onPick(Lcom/android/fileexplorer/FileInfo;)V
.end method

.method public abstract onRefreshFileList(Ljava/lang/String;Lcom/android/fileexplorer/FileSortHelper;)Z
.end method

.method public abstract runOnUiThread(Ljava/lang/Runnable;)V
.end method

.method public abstract shouldHideMenu(I)Z
.end method

.method public abstract sortCurrentList(Lcom/android/fileexplorer/FileSortHelper;)V
.end method

.method public abstract startActivity(Landroid/content/Intent;)V
.end method
