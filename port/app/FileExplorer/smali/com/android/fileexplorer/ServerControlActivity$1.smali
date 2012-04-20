.class Lcom/android/fileexplorer/ServerControlActivity$1;
.super Landroid/os/Handler;
.source "ServerControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/ServerControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/ServerControlActivity;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/ServerControlActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/fileexplorer/ServerControlActivity$1;->this$0:Lcom/android/fileexplorer/ServerControlActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 56
    :goto_0
    return-void

    .line 50
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/ServerControlActivity$1;->removeMessages(I)V

    .line 51
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity$1;->this$0:Lcom/android/fileexplorer/ServerControlActivity;

    invoke-virtual {v0}, Lcom/android/fileexplorer/ServerControlActivity;->updateUi()V

    goto :goto_0

    .line 54
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/ServerControlActivity$1;->removeMessages(I)V

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
