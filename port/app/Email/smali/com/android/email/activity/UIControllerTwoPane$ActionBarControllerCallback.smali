.class Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;
.super Ljava/lang/Object;
.source "UIControllerTwoPane.java"

# interfaces
.implements Lcom/android/email/activity/ActionBarController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UIControllerTwoPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarControllerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/UIControllerTwoPane;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/UIControllerTwoPane;)V
    .locals 0
    .parameter

    .prologue
    .line 633
    iput-object p1, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/UIControllerTwoPane;Lcom/android/email/activity/UIControllerTwoPane$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 633
    invoke-direct {p0, p1}, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;-><init>(Lcom/android/email/activity/UIControllerTwoPane;)V

    return-void
.end method


# virtual methods
.method public getMailboxId()J
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerTwoPane;->getMessageListMailboxId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessageSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerTwoPane;->isMessageViewInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerTwoPane;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->isMessageOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerTwoPane;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 681
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSearchHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerTwoPane;->getSearchHint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleMode()I
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    #getter for: Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;
    invoke-static {v0}, Lcom/android/email/activity/UIControllerTwoPane;->access$200(Lcom/android/email/activity/UIControllerTwoPane;)Lcom/android/email/activity/ThreePaneLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->isLeftPaneVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    const/16 v0, 0x10

    .line 673
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x12

    goto :goto_0
.end method

.method public getUIAccountId()J
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerTwoPane;->getUIAccountId()J

    move-result-wide v0

    return-wide v0
.end method

.method public onAccountSelected(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/email/activity/UIControllerTwoPane;->switchAccount(JZ)V

    .line 653
    return-void
.end method

.method public onMailboxSelected(JJ)V
    .locals 1
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/email/activity/UIControllerTwoPane;->openMailbox(JJ)V

    .line 658
    return-void
.end method

.method public onNoAccountsFound()V
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    iget-object v0, v0, Lcom/android/email/activity/UIControllerTwoPane;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 663
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    iget-object v0, v0, Lcom/android/email/activity/UIControllerTwoPane;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v0}, Lcom/android/email/activity/EmailActivity;->finish()V

    .line 664
    return-void
.end method

.method public onSearchExit()V
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerTwoPane;->onSearchExit()V

    .line 711
    return-void
.end method

.method public onSearchStarted()V
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerTwoPane;->onSearchStarted()V

    .line 701
    return-void
.end method

.method public onSearchSubmit(Ljava/lang/String;)V
    .locals 1
    .parameter "queryTerm"

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/UIControllerTwoPane;->onSearchSubmit(Ljava/lang/String;)V

    .line 706
    return-void
.end method

.method public shouldShowUp()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 687
    iget-object v4, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    #getter for: Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;
    invoke-static {v4}, Lcom/android/email/activity/UIControllerTwoPane;->access$200(Lcom/android/email/activity/UIControllerTwoPane;)Lcom/android/email/activity/ThreePaneLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/activity/ThreePaneLayout;->getVisiblePanes()I

    move-result v1

    .line 688
    .local v1, visiblePanes:I
    and-int/lit8 v4, v1, 0x4

    if-nez v4, :cond_2

    move v0, v3

    .line 689
    .local v0, leftPaneHidden:Z
    :goto_0
    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v4}, Lcom/android/email/activity/UIControllerTwoPane;->isMailboxListInstalled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v4}, Lcom/android/email/activity/UIControllerTwoPane;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/activity/MailboxListFragment;->canNavigateUp()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2

    .end local v0           #leftPaneHidden:Z
    :cond_2
    move v0, v2

    .line 688
    goto :goto_0
.end method
