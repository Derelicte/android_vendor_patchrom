.class Lcom/android/fileexplorer/FileViewActivity$2;
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
    .line 108
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewActivity$2;->this$0:Lcom/android/fileexplorer/FileViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 111
    :try_start_0
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewActivity$2;->this$0:Lcom/android/fileexplorer/FileViewActivity;

    #getter for: Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;
    invoke-static {v2}, Lcom/android/fileexplorer/FileViewActivity;->access$100(Lcom/android/fileexplorer/FileViewActivity;)Lcom/android/fileexplorer/FileViewInteractionHub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->getCurrentPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 112
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewActivity$2;->this$0:Lcom/android/fileexplorer/FileViewActivity;

    #getter for: Lcom/android/fileexplorer/FileViewActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/fileexplorer/FileViewActivity;->access$200(Lcom/android/fileexplorer/FileViewActivity;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 113
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewActivity$2;->this$0:Lcom/android/fileexplorer/FileViewActivity;

    #getter for: Lcom/android/fileexplorer/FileViewActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/fileexplorer/FileViewActivity;->access$200(Lcom/android/fileexplorer/FileViewActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method
