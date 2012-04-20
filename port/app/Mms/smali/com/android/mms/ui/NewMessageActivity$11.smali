.class Lcom/android/mms/ui/NewMessageActivity$11;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/NewMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NewMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageActivity$11;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 599
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_1

    .line 610
    :cond_0
    :goto_0
    return v0

    .line 602
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 604
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity$11;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecipientEditor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/ui/NewMessageActivity;->access$300(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity$11;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v1}, Lcom/android/mms/ui/NewMessageActivity;->access$1400(Lcom/android/mms/ui/NewMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 605
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$11;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity$11;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v1}, Lcom/android/mms/ui/NewMessageActivity;->access$1400(Lcom/android/mms/ui/NewMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    #calls: Lcom/android/mms/ui/NewMessageActivity;->removeRecipient(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/NewMessageActivity;->access$1500(Lcom/android/mms/ui/NewMessageActivity;I)V

    .line 606
    const/4 v0, 0x1

    goto :goto_0

    .line 602
    nop

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method
