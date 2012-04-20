.class Lcom/android/fileexplorer/FileViewActivity$5;
.super Ljava/lang/Object;
.source "FileViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/FileViewActivity;->onDataChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/FileViewActivity;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/FileViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewActivity$5;->this$0:Lcom/android/fileexplorer/FileViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity$5;->this$0:Lcom/android/fileexplorer/FileViewActivity;

    #getter for: Lcom/android/fileexplorer/FileViewActivity;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v0}, Lcom/android/fileexplorer/FileViewActivity;->access$400(Lcom/android/fileexplorer/FileViewActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 328
    return-void
.end method
