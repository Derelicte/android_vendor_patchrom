.class final Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ConversationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationFragment;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    .line 495
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 496
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    .line 545
    packed-switch p1, :pswitch_data_0

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 549
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationFragment;->access$200(Lcom/android/mms/ui/ConversationFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;)V

    .line 552
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationFragment;->access$200(Lcom/android/mms/ui/ConversationFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->init(Landroid/content/Context;)V

    .line 556
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationFragment;->access$200(Lcom/android/mms/ui/ConversationFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    .line 560
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationFragment;->access$200(Lcom/android/mms/ui/ConversationFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotification(Landroid/content/Context;)V

    .line 563
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #calls: Lcom/android/mms/ui/ConversationFragment;->startAsyncQuery()V
    invoke-static {v0}, Lcom/android/mms/ui/ConversationFragment;->access$100(Lcom/android/mms/ui/ConversationFragment;)V

    .line 565
    invoke-static {}, Lcom/android/mms/ui/ConversationFragment;->access$1100()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 566
    invoke-static {}, Lcom/android/mms/ui/ConversationFragment;->access$1100()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 567
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/mms/ui/ConversationFragment;->access$1102(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0

    .line 545
    :pswitch_data_0
    .packed-switch 0x709
        :pswitch_0
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 500
    sparse-switch p1, :sswitch_data_0

    .line 539
    const-string v3, "ConversationFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQueryComplete called with unknown token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 502
    :sswitch_0
    iget-object v4, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mEmptyView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationFragment;->access$1600(Lcom/android/mms/ui/ConversationFragment;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f0a00a7

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 503
    iget-object v4, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationFragment;->access$700(Lcom/android/mms/ui/ConversationFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 505
    iget-object v4, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mNeedToMarkAsSeen:Z
    invoke-static {v4}, Lcom/android/mms/ui/ConversationFragment;->access$1700(Lcom/android/mms/ui/ConversationFragment;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 506
    iget-object v4, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #setter for: Lcom/android/mms/ui/ConversationFragment;->mNeedToMarkAsSeen:Z
    invoke-static {v4, v3}, Lcom/android/mms/ui/ConversationFragment;->access$1702(Lcom/android/mms/ui/ConversationFragment;Z)Z

    .line 507
    iget-object v3, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationFragment;->access$200(Lcom/android/mms/ui/ConversationFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/data/Conversation;->markAllConversationsAsSeen(Landroid/content/Context;)V

    .line 512
    iget-object v3, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationFragment;->access$300(Lcom/android/mms/ui/ConversationFragment;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mDeleteObsoleteThreadsRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationFragment;->access$1500(Lcom/android/mms/ui/ConversationFragment;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :sswitch_1
    move-object v2, p2

    .line 517
    check-cast v2, Ljava/util/Collection;

    .line 518
    .local v2, threadIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v4, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;

    iget-object v5, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationFragment;->access$1000(Lcom/android/mms/ui/ConversationFragment;)Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationFragment;->access$200(Lcom/android/mms/ui/ConversationFragment;)Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v2, v5, v6}, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;-><init>(Ljava/util/Collection;Landroid/content/AsyncQueryHandler;Landroid/content/Context;)V

    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationFragment;->access$200(Lcom/android/mms/ui/ConversationFragment;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4, v2, v3, v5}, Lcom/android/mms/ui/ConversationFragment;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;Ljava/util/Collection;ZLandroid/content/Context;)V

    goto :goto_0

    .line 526
    .end local v2           #threadIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    :sswitch_2
    if-eqz p3, :cond_0

    .line 527
    const/4 v4, -0x1

    invoke-interface {p3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 528
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 529
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 530
    .local v0, thread:J
    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation$TimedThreads;->setHasTimedMessage(J)V

    goto :goto_1

    .line 532
    .end local v0           #thread:J
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationFragment;->access$1804(Lcom/android/mms/ui/ConversationFragment;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 533
    iget-object v3, p0, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationFragment;->access$700(Lcom/android/mms/ui/ConversationFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 500
    nop

    :sswitch_data_0
    .sparse-switch
        0x6a5 -> :sswitch_0
        0x6a6 -> :sswitch_2
        0x6a7 -> :sswitch_2
        0x70a -> :sswitch_1
    .end sparse-switch
.end method
