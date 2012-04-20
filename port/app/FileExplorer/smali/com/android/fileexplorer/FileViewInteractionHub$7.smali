.class Lcom/android/fileexplorer/FileViewInteractionHub$7;
.super Ljava/lang/Object;
.source "FileViewInteractionHub.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/FileViewInteractionHub;->doOperationDelete(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

.field final synthetic val$selectedFiles:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/FileViewInteractionHub;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$7;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    iput-object p2, p0, Lcom/android/fileexplorer/FileViewInteractionHub$7;->val$selectedFiles:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub$7;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    #getter for: Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;
    invoke-static {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$700(Lcom/android/fileexplorer/FileViewInteractionHub;)Lcom/android/fileexplorer/FileOperationHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$7;->val$selectedFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/FileOperationHelper;->Delete(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub$7;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$7;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    #getter for: Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$100(Lcom/android/fileexplorer/FileViewInteractionHub;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060032

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->showProgress(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$800(Lcom/android/fileexplorer/FileViewInteractionHub;Ljava/lang/String;)V

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub$7;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    .line 583
    return-void
.end method
