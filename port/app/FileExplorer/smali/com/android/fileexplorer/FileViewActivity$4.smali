.class Lcom/android/fileexplorer/FileViewActivity$4;
.super Ljava/lang/Object;
.source "FileViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/FileViewActivity;->onRefreshFileList(Ljava/lang/String;Lcom/android/fileexplorer/FileSortHelper;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/FileViewActivity;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/FileViewActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewActivity$4;->this$0:Lcom/android/fileexplorer/FileViewActivity;

    iput p2, p0, Lcom/android/fileexplorer/FileViewActivity$4;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity$4;->this$0:Lcom/android/fileexplorer/FileViewActivity;

    #getter for: Lcom/android/fileexplorer/FileViewActivity;->mFileListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/fileexplorer/FileViewActivity;->access$300(Lcom/android/fileexplorer/FileViewActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/android/fileexplorer/FileViewActivity$4;->val$pos:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 286
    return-void
.end method
