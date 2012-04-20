.class Lcom/android/fileexplorer/FileViewActivity$3;
.super Ljava/lang/Object;
.source "FileViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/FileViewActivity;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 120
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewActivity$3;->this$0:Lcom/android/fileexplorer/FileViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity$3;->this$0:Lcom/android/fileexplorer/FileViewActivity;

    #getter for: Lcom/android/fileexplorer/FileViewActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/fileexplorer/FileViewActivity;->access$200(Lcom/android/fileexplorer/FileViewActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 123
    return-void
.end method
