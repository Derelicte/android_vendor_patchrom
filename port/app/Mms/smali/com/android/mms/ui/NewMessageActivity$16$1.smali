.class Lcom/android/mms/ui/NewMessageActivity$16$1;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NewMessageActivity$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/NewMessageActivity$16;

.field final synthetic val$list:Lcom/android/mms/data/ContactList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessageActivity$16;Lcom/android/mms/data/ContactList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageActivity$16$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$16;

    iput-object p2, p0, Lcom/android/mms/ui/NewMessageActivity$16$1;->val$list:Lcom/android/mms/data/ContactList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1010
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$16$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$16;

    iget-object v2, v2, Lcom/android/mms/ui/NewMessageActivity$16;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerHead:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/ui/NewMessageActivity;->access$1800(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1011
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$16$1;->val$list:Lcom/android/mms/data/ContactList;

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1012
    .local v0, c:Lcom/android/mms/data/Contact;
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$16$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$16;

    iget-object v2, v2, Lcom/android/mms/ui/NewMessageActivity$16;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/mms/ui/NewMessageActivity;->addRecipient(Lcom/android/mms/data/Contact;Ljava/lang/String;)V
    invoke-static {v2, v0, v3}, Lcom/android/mms/ui/NewMessageActivity;->access$2200(Lcom/android/mms/ui/NewMessageActivity;Lcom/android/mms/data/Contact;Ljava/lang/String;)V

    goto :goto_0

    .line 1014
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$16$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$16;

    iget-object v2, v2, Lcom/android/mms/ui/NewMessageActivity$16;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #calls: Lcom/android/mms/ui/NewMessageActivity;->syncNumbersToWorkingMessage()V
    invoke-static {v2}, Lcom/android/mms/ui/NewMessageActivity;->access$1700(Lcom/android/mms/ui/NewMessageActivity;)V

    .line 1015
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$16$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$16;

    iget-object v2, v2, Lcom/android/mms/ui/NewMessageActivity$16;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/NewMessageActivity;->updateSendButtonState()V

    .line 1016
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$16$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$16;

    iget-object v2, v2, Lcom/android/mms/ui/NewMessageActivity$16;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mms/ui/NewMessageActivity$16$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$16;

    iget-object v3, v3, Lcom/android/mms/ui/NewMessageActivity$16;->val$showProgress:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1017
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$16$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$16;

    iget-object v2, v2, Lcom/android/mms/ui/NewMessageActivity$16;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewer:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/ui/NewMessageActivity;->access$2300(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1018
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$16$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$16;

    iget-object v2, v2, Lcom/android/mms/ui/NewMessageActivity$16;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #calls: Lcom/android/mms/ui/NewMessageActivity;->updateRecipientsViewerText()V
    invoke-static {v2}, Lcom/android/mms/ui/NewMessageActivity;->access$1100(Lcom/android/mms/ui/NewMessageActivity;)V

    .line 1020
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$16$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$16;

    iget-object v2, v2, Lcom/android/mms/ui/NewMessageActivity$16;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1021
    return-void
.end method
