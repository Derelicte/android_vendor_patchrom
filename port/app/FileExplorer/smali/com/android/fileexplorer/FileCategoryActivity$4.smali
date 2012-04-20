.class Lcom/android/fileexplorer/FileCategoryActivity$4;
.super Landroid/os/Handler;
.source "FileCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FileCategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/FileCategoryActivity;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/FileCategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 602
    iput-object p1, p0, Lcom/android/fileexplorer/FileCategoryActivity$4;->this$0:Lcom/android/fileexplorer/FileCategoryActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 604
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 609
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 610
    return-void

    .line 606
    :pswitch_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity$4;->this$0:Lcom/android/fileexplorer/FileCategoryActivity;

    #calls: Lcom/android/fileexplorer/FileCategoryActivity;->updateUI()V
    invoke-static {v0}, Lcom/android/fileexplorer/FileCategoryActivity;->access$800(Lcom/android/fileexplorer/FileCategoryActivity;)V

    goto :goto_0

    .line 604
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
