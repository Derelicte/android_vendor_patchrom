.class Lcom/android/phone/MiuiEditPinDialog$2;
.super Landroid/os/Handler;
.source "MiuiEditPinDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiEditPinDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiEditPinDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiEditPinDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const v6, 0x7f0c033f

    const v5, 0x7f0c028e

    const v2, 0x7f0c028d

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 417
    const/4 v0, 0x0

    .line 419
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 421
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #getter for: Lcom/android/phone/MiuiEditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/phone/MiuiEditPinDialog;->access$100(Lcom/android/phone/MiuiEditPinDialog;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 422
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #calls: Lcom/android/phone/MiuiEditPinDialog;->process()V
    invoke-static {v1}, Lcom/android/phone/MiuiEditPinDialog;->access$200(Lcom/android/phone/MiuiEditPinDialog;)V

    goto :goto_0

    .line 425
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    #setter for: Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/phone/MiuiEditPinDialog;->access$302(Lcom/android/phone/MiuiEditPinDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 426
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    invoke-virtual {v1}, Lcom/android/phone/MiuiEditPinDialog;->show()V

    .line 427
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #getter for: Lcom/android/phone/MiuiEditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/phone/MiuiEditPinDialog;->access$100(Lcom/android/phone/MiuiEditPinDialog;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 430
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #ar:Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 431
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 432
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #getter for: Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/MiuiEditPinDialog;->access$400(Lcom/android/phone/MiuiEditPinDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/android/phone/MiuiEditPinDialog$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 434
    :cond_1
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #calls: Lcom/android/phone/MiuiEditPinDialog;->dismiss(Z)V
    invoke-static {v1, v3}, Lcom/android/phone/MiuiEditPinDialog;->access$500(Lcom/android/phone/MiuiEditPinDialog;Z)V

    goto :goto_0

    .line 438
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #ar:Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 439
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-static {v0}, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->updatePin2State(Landroid/os/AsyncResult;)V

    .line 440
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 441
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #getter for: Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/MiuiEditPinDialog;->access$400(Lcom/android/phone/MiuiEditPinDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/android/phone/MiuiEditPinDialog$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 443
    :cond_2
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #calls: Lcom/android/phone/MiuiEditPinDialog;->dismiss(Z)V
    invoke-static {v1, v3}, Lcom/android/phone/MiuiEditPinDialog;->access$500(Lcom/android/phone/MiuiEditPinDialog;Z)V

    goto :goto_0

    .line 447
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #ar:Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 448
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    .line 449
    invoke-static {}, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->isPin1Locked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #getter for: Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/MiuiEditPinDialog;->access$400(Lcom/android/phone/MiuiEditPinDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/android/phone/MiuiEditPinDialog$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 453
    :cond_3
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    const v2, 0x7f0c0343

    #calls: Lcom/android/phone/MiuiEditPinDialog;->showToast(I)V
    invoke-static {v1, v2}, Lcom/android/phone/MiuiEditPinDialog;->access$600(Lcom/android/phone/MiuiEditPinDialog;I)V

    .line 454
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #calls: Lcom/android/phone/MiuiEditPinDialog;->dismiss(Z)V
    invoke-static {v1, v3}, Lcom/android/phone/MiuiEditPinDialog;->access$500(Lcom/android/phone/MiuiEditPinDialog;Z)V

    goto/16 :goto_0

    .line 458
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #ar:Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 459
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-static {v0}, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->updatePin2State(Landroid/os/AsyncResult;)V

    .line 460
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    .line 461
    invoke-static {}, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->isPin2Locked()Z

    move-result v1

    if-nez v1, :cond_4

    .line 462
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #getter for: Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/MiuiEditPinDialog;->access$400(Lcom/android/phone/MiuiEditPinDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/android/phone/MiuiEditPinDialog$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 464
    :cond_4
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #calls: Lcom/android/phone/MiuiEditPinDialog;->dismiss(Z)V
    invoke-static {v1, v3}, Lcom/android/phone/MiuiEditPinDialog;->access$500(Lcom/android/phone/MiuiEditPinDialog;Z)V

    .line 465
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #getter for: Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/MiuiEditPinDialog;->access$400(Lcom/android/phone/MiuiEditPinDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0340

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/phone/MiuiEditPinDialog$2$1;

    invoke-direct {v3, p0}, Lcom/android/phone/MiuiEditPinDialog$2$1;-><init>(Lcom/android/phone/MiuiEditPinDialog$2;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 475
    :cond_5
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #calls: Lcom/android/phone/MiuiEditPinDialog;->showToast(I)V
    invoke-static {v1, v6}, Lcom/android/phone/MiuiEditPinDialog;->access$600(Lcom/android/phone/MiuiEditPinDialog;I)V

    .line 476
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #calls: Lcom/android/phone/MiuiEditPinDialog;->dismiss(Z)V
    invoke-static {v1, v3}, Lcom/android/phone/MiuiEditPinDialog;->access$500(Lcom/android/phone/MiuiEditPinDialog;Z)V

    goto/16 :goto_0

    .line 480
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #ar:Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 481
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_6

    .line 482
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #getter for: Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/MiuiEditPinDialog;->access$400(Lcom/android/phone/MiuiEditPinDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0290

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/android/phone/MiuiEditPinDialog$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 484
    :cond_6
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    const v2, 0x7f0c0343

    #calls: Lcom/android/phone/MiuiEditPinDialog;->showToast(I)V
    invoke-static {v1, v2}, Lcom/android/phone/MiuiEditPinDialog;->access$600(Lcom/android/phone/MiuiEditPinDialog;I)V

    .line 485
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #calls: Lcom/android/phone/MiuiEditPinDialog;->dismiss(Z)V
    invoke-static {v1, v3}, Lcom/android/phone/MiuiEditPinDialog;->access$500(Lcom/android/phone/MiuiEditPinDialog;Z)V

    goto/16 :goto_0

    .line 489
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #ar:Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 490
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-static {v0}, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->updatePin2State(Landroid/os/AsyncResult;)V

    .line 491
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_7

    .line 492
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #getter for: Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/MiuiEditPinDialog;->access$400(Lcom/android/phone/MiuiEditPinDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c028f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/android/phone/MiuiEditPinDialog$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 494
    :cond_7
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #calls: Lcom/android/phone/MiuiEditPinDialog;->showToast(I)V
    invoke-static {v1, v6}, Lcom/android/phone/MiuiEditPinDialog;->access$600(Lcom/android/phone/MiuiEditPinDialog;I)V

    .line 495
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog$2;->this$0:Lcom/android/phone/MiuiEditPinDialog;

    #calls: Lcom/android/phone/MiuiEditPinDialog;->dismiss(Z)V
    invoke-static {v1, v3}, Lcom/android/phone/MiuiEditPinDialog;->access$500(Lcom/android/phone/MiuiEditPinDialog;Z)V

    goto/16 :goto_0

    .line 419
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
