.class Lcom/android/fileexplorer/InformationDialog$1;
.super Landroid/os/Handler;
.source "InformationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/InformationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/InformationDialog;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/InformationDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/fileexplorer/InformationDialog$1;->this$0:Lcom/android/fileexplorer/InformationDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 69
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 71
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    .local v0, data:Landroid/os/Bundle;
    const-string v3, "SIZE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 73
    .local v1, size:J
    iget-object v3, p0, Lcom/android/fileexplorer/InformationDialog$1;->this$0:Lcom/android/fileexplorer/InformationDialog;

    #getter for: Lcom/android/fileexplorer/InformationDialog;->mView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/fileexplorer/InformationDialog;->access$100(Lcom/android/fileexplorer/InformationDialog;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090045

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/fileexplorer/InformationDialog$1;->this$0:Lcom/android/fileexplorer/InformationDialog;

    #calls: Lcom/android/fileexplorer/InformationDialog;->formatFileSizeString(J)Ljava/lang/String;
    invoke-static {v4, v1, v2}, Lcom/android/fileexplorer/InformationDialog;->access$000(Lcom/android/fileexplorer/InformationDialog;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
