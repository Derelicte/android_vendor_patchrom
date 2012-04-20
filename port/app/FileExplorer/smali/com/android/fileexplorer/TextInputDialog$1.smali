.class Lcom/android/fileexplorer/TextInputDialog$1;
.super Ljava/lang/Object;
.source "TextInputDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/TextInputDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/TextInputDialog;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/TextInputDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/fileexplorer/TextInputDialog$1;->this$0:Lcom/android/fileexplorer/TextInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 52
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/fileexplorer/TextInputDialog$1;->this$0:Lcom/android/fileexplorer/TextInputDialog;

    iget-object v1, p0, Lcom/android/fileexplorer/TextInputDialog$1;->this$0:Lcom/android/fileexplorer/TextInputDialog;

    #getter for: Lcom/android/fileexplorer/TextInputDialog;->mFolderName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/fileexplorer/TextInputDialog;->access$100(Lcom/android/fileexplorer/TextInputDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/fileexplorer/TextInputDialog;->mInputText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/fileexplorer/TextInputDialog;->access$002(Lcom/android/fileexplorer/TextInputDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/android/fileexplorer/TextInputDialog$1;->this$0:Lcom/android/fileexplorer/TextInputDialog;

    #getter for: Lcom/android/fileexplorer/TextInputDialog;->mListener:Lcom/android/fileexplorer/TextInputDialog$OnFinishListener;
    invoke-static {v0}, Lcom/android/fileexplorer/TextInputDialog;->access$200(Lcom/android/fileexplorer/TextInputDialog;)Lcom/android/fileexplorer/TextInputDialog$OnFinishListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/TextInputDialog$1;->this$0:Lcom/android/fileexplorer/TextInputDialog;

    #getter for: Lcom/android/fileexplorer/TextInputDialog;->mInputText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/fileexplorer/TextInputDialog;->access$000(Lcom/android/fileexplorer/TextInputDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/TextInputDialog$OnFinishListener;->onFinish(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/fileexplorer/TextInputDialog$1;->this$0:Lcom/android/fileexplorer/TextInputDialog;

    invoke-virtual {v0}, Lcom/android/fileexplorer/TextInputDialog;->dismiss()V

    .line 58
    :cond_0
    return-void
.end method
