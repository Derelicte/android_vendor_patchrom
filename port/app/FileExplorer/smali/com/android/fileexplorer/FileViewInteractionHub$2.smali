.class Lcom/android/fileexplorer/FileViewInteractionHub$2;
.super Ljava/lang/Object;
.source "FileViewInteractionHub.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FileViewInteractionHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/FileViewInteractionHub;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/FileViewInteractionHub;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$2;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 191
    :sswitch_0
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$2;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationCopy()V

    goto :goto_0

    .line 194
    :sswitch_1
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$2;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationMove()V

    goto :goto_0

    .line 197
    :sswitch_2
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$2;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationSend()V

    goto :goto_0

    .line 200
    :sswitch_3
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$2;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationDelete()V

    goto :goto_0

    .line 203
    :sswitch_4
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$2;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationSelectAllOrCancel()V

    goto :goto_0

    .line 206
    :sswitch_5
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$2;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->onNavigationBarClick()V

    goto :goto_0

    .line 209
    :sswitch_6
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$2;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationButtonConfirm()V

    goto :goto_0

    .line 212
    :sswitch_7
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$2;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationButtonCancel()V

    goto :goto_0

    .line 215
    :sswitch_8
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$2;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationUpLevel()Z

    .line 216
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$2;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    #getter for: Lcom/android/fileexplorer/FileViewInteractionHub;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$100(Lcom/android/fileexplorer/FileViewInteractionHub;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getActionMode()Landroid/view/ActionMode;

    move-result-object v0

    .line 217
    .local v0, mode:Landroid/view/ActionMode;
    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 189
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09000f -> :sswitch_5
        0x7f090013 -> :sswitch_8
        0x7f090038 -> :sswitch_6
        0x7f090039 -> :sswitch_7
        0x7f09003e -> :sswitch_3
        0x7f09003f -> :sswitch_0
        0x7f090040 -> :sswitch_1
        0x7f090041 -> :sswitch_2
        0x7f090042 -> :sswitch_4
    .end sparse-switch
.end method
