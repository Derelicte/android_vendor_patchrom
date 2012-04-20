.class Lcom/android/email/activity/UIControllerTwoPane;
.super Lcom/android/email/activity/UIControllerBase;
.source "UIControllerTwoPane.java"

# interfaces
.implements Lcom/android/email/activity/ThreePaneLayout$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/UIControllerTwoPane$1;,
        Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;,
        Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;,
        Lcom/android/email/activity/UIControllerTwoPane$CommandButtonCallback;
    }
.end annotation


# static fields
.field static final INBOX_AUTO_REFRESH_MIN_INTERVAL:I = 0x2710
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAILBOX_REFRESH_MIN_INTERVAL:I = 0x7530
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

.field private mThreePane:Lcom/android/email/activity/ThreePaneLayout;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/EmailActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/email/activity/UIControllerBase;-><init>(Lcom/android/email/activity/EmailActivity;)V

    .line 61
    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/UIControllerTwoPane;)Lcom/android/email/activity/ThreePaneLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    return-object v0
.end method

.method private goBackToMailbox()V
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->isMessageViewInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showLeftPane()Z

    .line 383
    :cond_0
    return-void
.end method

.method private unselectMessage()V
    .locals 3

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/UIControllerTwoPane;->removeMessageViewFragment(Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/UIControllerTwoPane;->commitFragmentTransaction(Landroid/app/FragmentTransaction;)V

    .line 451
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->isMessageListInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageListFragment;->setSelectedMessage(J)V

    .line 454
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->stopMessageOrderManager()V

    .line 455
    return-void
.end method

.method private updateMailboxList(Landroid/app/FragmentTransaction;Z)V
    .locals 8
    .parameter "ft"
    .parameter "clearDependentPane"

    .prologue
    .line 357
    sget-boolean v5, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 358
    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " updateMailboxList "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/UIControllerTwoPane;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    iget-object v5, p0, Lcom/android/email/activity/UIControllerTwoPane;->mListContext:Lcom/android/email/MessageListContext;

    iget-wide v0, v5, Lcom/android/email/MessageListContext;->mAccountId:J

    .line 362
    .local v0, accountId:J
    iget-object v5, p0, Lcom/android/email/activity/UIControllerTwoPane;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v5}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v3

    .line 363
    .local v3, mailboxId:J
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getUIAccountId()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getMailboxListMailboxId()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-eqz v5, :cond_2

    .line 364
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UIControllerTwoPane;->removeMailboxListFragment(Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    .line 365
    iget-object v5, p0, Lcom/android/email/activity/UIControllerTwoPane;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v5}, Lcom/android/email/MessageListContext;->isSearch()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v2, 0x1

    .line 366
    .local v2, enableHighlight:Z
    :goto_0
    iget-object v5, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v5}, Lcom/android/email/activity/ThreePaneLayout;->getLeftPaneId()I

    move-result v5

    invoke-static {v0, v1, v3, v4, v2}, Lcom/android/email/activity/MailboxListFragment;->newInstance(JJZ)Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 369
    .end local v2           #enableHighlight:Z
    :cond_2
    if-eqz p2, :cond_3

    .line 370
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UIControllerTwoPane;->removeMessageListFragment(Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    .line 371
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UIControllerTwoPane;->removeMessageViewFragment(Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    .line 373
    :cond_3
    return-void

    .line 365
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateMessageList(Landroid/app/FragmentTransaction;Z)V
    .locals 4
    .parameter "ft"
    .parameter "clearDependentPane"

    .prologue
    .line 391
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 392
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updateMessageList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/UIControllerTwoPane;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v0}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getMessageListMailboxId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 396
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UIControllerTwoPane;->removeMessageListFragment(Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    .line 397
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->getMiddlePaneId()I

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mListContext:Lcom/android/email/MessageListContext;

    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->newInstance(Lcom/android/email/MessageListContext;)Lcom/android/email/activity/MessageListFragment;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 399
    :cond_1
    if-eqz p2, :cond_2

    .line 400
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UIControllerTwoPane;->removeMessageViewFragment(Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    .line 402
    :cond_2
    return-void
.end method

.method private updateMessageList(Z)V
    .locals 2
    .parameter "clearDependentPane"

    .prologue
    .line 409
    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 410
    .local v0, ft:Landroid/app/FragmentTransaction;
    invoke-direct {p0, v0, p1}, Lcom/android/email/activity/UIControllerTwoPane;->updateMessageList(Landroid/app/FragmentTransaction;Z)V

    .line 411
    invoke-virtual {p0, v0}, Lcom/android/email/activity/UIControllerTwoPane;->commitFragmentTransaction(Landroid/app/FragmentTransaction;)V

    .line 412
    return-void
.end method

.method private updateMessageView(Landroid/app/FragmentTransaction;J)V
    .locals 3
    .parameter "ft"
    .parameter "messageId"

    .prologue
    .line 421
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 422
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updateMessageView messageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 425
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 428
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getMessageId()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_2

    .line 435
    :goto_0
    return-void

    .line 432
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UIControllerTwoPane;->removeMessageViewFragment(Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    .line 434
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->getRightPaneId()I

    move-result v0

    invoke-static {p2, p3}, Lcom/android/email/activity/MessageViewFragment;->newInstance(J)Lcom/android/email/activity/MessageViewFragment;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method


# virtual methods
.method protected createActionBarController(Landroid/app/Activity;)Lcom/android/email/activity/ActionBarController;
    .locals 5
    .parameter "activity"

    .prologue
    .line 255
    new-instance v0, Lcom/android/email/activity/ActionBarController;

    invoke-virtual {p1}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/email/activity/UIControllerTwoPane$ActionBarControllerCallback;-><init>(Lcom/android/email/activity/UIControllerTwoPane;Lcom/android/email/activity/UIControllerTwoPane$1;)V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/email/activity/ActionBarController;-><init>(Landroid/content/Context;Landroid/app/LoaderManager;Landroid/app/ActionBar;Lcom/android/email/activity/ActionBarController$Callback;)V

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 65
    const v0, 0x7f040029

    return v0
.end method

.method public getMailboxSettingsMailboxId()J
    .locals 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getMessageListMailboxId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUIAccountId()J
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->isMailboxListInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment;->getAccountId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected installMessageListFragment(Lcom/android/email/activity/MessageListFragment;)V
    .locals 3
    .parameter "fragment"

    .prologue
    .line 309
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerBase;->installMessageListFragment(Lcom/android/email/activity/MessageListFragment;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->isMailboxListInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MailboxListFragment;->setHighlightedMailbox(J)V

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListFragment;->setLayout(Lcom/android/email/activity/ThreePaneLayout;)V

    .line 315
    return-void
.end method

.method protected installMessageViewFragment(Lcom/android/email/activity/MessageViewFragment;)V
    .locals 3
    .parameter "fragment"

    .prologue
    .line 319
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerBase;->installMessageViewFragment(Lcom/android/email/activity/MessageViewFragment;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->isMessageListInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/email/activity/MessageViewFragment;->getMessageId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageListFragment;->setSelectedMessage(J)V

    .line 324
    :cond_0
    return-void
.end method

.method protected isRefreshEnabled()Z
    .locals 4

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getActualAccountId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v0}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRefreshInProgress()Z
    .locals 4

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getMessageListMailboxId()J

    move-result-wide v0

    .line 281
    .local v0, messageListMailboxId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/UIControllerTwoPane;->mRefreshManager:Lcom/android/email/RefreshManager;

    invoke-virtual {v2, v0, v1}, Lcom/android/email/RefreshManager;->isMessageListRefreshing(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected navigateToMessage(J)V
    .locals 2
    .parameter "messageId"

    .prologue
    .line 441
    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 442
    .local v0, ft:Landroid/app/FragmentTransaction;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/email/activity/UIControllerTwoPane;->updateMessageView(Landroid/app/FragmentTransaction;J)V

    .line 443
    invoke-virtual {p0, v0}, Lcom/android/email/activity/UIControllerTwoPane;->commitFragmentTransaction(Landroid/app/FragmentTransaction;)V

    .line 444
    return-void
.end method

.method public onAccountSelected(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/email/activity/UIControllerTwoPane;->switchAccount(JZ)V

    .line 101
    return-void
.end method

.method public onActivityViewReady()V
    .locals 3

    .prologue
    .line 243
    invoke-super {p0}, Lcom/android/email/activity/UIControllerBase;->onActivityViewReady()V

    .line 246
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mActivity:Lcom/android/email/activity/EmailActivity;

    const v1, 0x7f0e0070

    invoke-virtual {v0, v1}, Lcom/android/email/activity/EmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/ThreePaneLayout;

    iput-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    .line 247
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/ThreePaneLayout;->setCallback(Lcom/android/email/activity/ThreePaneLayout$Callback;)V

    .line 249
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->getMessageCommandButtons()Lcom/android/email/activity/MessageCommandButtonView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    .line 250
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    new-instance v1, Lcom/android/email/activity/UIControllerTwoPane$CommandButtonCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/email/activity/UIControllerTwoPane$CommandButtonCallback;-><init>(Lcom/android/email/activity/UIControllerTwoPane;Lcom/android/email/activity/UIControllerTwoPane$1;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCommandButtonView;->setCallback(Lcom/android/email/activity/MessageCommandButtonView$Callback;)V

    .line 251
    return-void
.end method

.method public onAdvancingOpAccepted(Ljava/util/Set;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, affectedMessages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->isMessageViewInstalled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getMessageOrderManager()Lcom/android/email/activity/MessageOrderManager;

    move-result-object v1

    .line 136
    .local v1, orderManager:Lcom/android/email/activity/MessageOrderManager;
    iget-object v2, p0, Lcom/android/email/activity/UIControllerTwoPane;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/Preferences;->getAutoAdvanceDirection()I

    move-result v0

    .line 137
    .local v0, autoAdvanceDir:I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    if-nez v1, :cond_3

    .line 138
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerTwoPane;->goBackToMailbox()V

    goto :goto_0

    .line 145
    :cond_3
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 147
    :cond_4
    :pswitch_0
    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->getCurrentMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 148
    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->moveToNewer()Z

    move-result v2

    if-nez v2, :cond_4

    .line 149
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerTwoPane;->goBackToMailbox()V

    goto :goto_0

    .line 153
    :cond_5
    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->getCurrentMessageId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/email/activity/UIControllerTwoPane;->navigateToMessage(J)V

    goto :goto_0

    .line 157
    :cond_6
    :pswitch_1
    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->getCurrentMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 158
    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->moveToOlder()Z

    move-result v2

    if-nez v2, :cond_6

    .line 159
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerTwoPane;->goBackToMailbox()V

    goto :goto_0

    .line 163
    :cond_7
    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->getCurrentMessageId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/email/activity/UIControllerTwoPane;->navigateToMessage(J)V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed(Z)Z
    .locals 2
    .parameter "isSystemBackKey"

    .prologue
    const/4 v0, 0x1

    .line 487
    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->isPaneCollapsible()Z

    move-result v1

    if-nez v1, :cond_4

    .line 488
    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v1, p1}, Lcom/android/email/activity/ActionBarController;->onBackPressed(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 513
    :cond_0
    :goto_0
    return v0

    .line 492
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->showLeftPane()Z

    move-result v1

    if-nez v1, :cond_0

    .line 510
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->isMailboxListInstalled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxListFragment;->navigateUp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 513
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 497
    :cond_4
    if-nez p1, :cond_5

    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->uncollapsePane()Z

    move-result v1

    if-nez v1, :cond_0

    .line 501
    :cond_5
    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v1, p1}, Lcom/android/email/activity/ActionBarController;->onBackPressed(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->showLeftPane()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method public onCalendarLinkClicked(J)V
    .locals 1
    .parameter "epochEventStartTime"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v0, p1, p2}, Lcom/android/email/activity/ActivityHelper;->openCalendar(Landroid/app/Activity;J)V

    .line 218
    return-void
.end method

.method public onDragEnded()V
    .locals 2

    .prologue
    .line 187
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 188
    const-string v0, "Email"

    const-string v1, "Drag ended"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    return-void
.end method

.method public onDragStarted()Z
    .locals 2

    .prologue
    .line 171
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "Email"

    const-string v1, "Drag started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mListContext:Lcom/android/email/MessageListContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v0}, Lcom/android/email/MessageListContext;->isSearch()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->isLeftPaneVisible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 178
    :cond_2
    const/4 v0, 0x0

    .line 181
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onForward()V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getMessageId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;J)V

    .line 224
    return-void
.end method

.method public onLoadMessageError(Ljava/lang/String;)V
    .locals 0
    .parameter "errorMessage"

    .prologue
    .line 212
    return-void
.end method

.method public onLoadMessageFinished()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public onLoadMessageStarted()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public onMailboxSelected(JJZ)V
    .locals 4
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "nestedNavigation"

    .prologue
    .line 89
    invoke-static {p1, p2, p3, p4}, Lcom/android/email/MessageListContext;->forMailbox(JJ)Lcom/android/email/MessageListContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/UIControllerTwoPane;->setListContext(Lcom/android/email/MessageListContext;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getMessageListMailboxId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/email/activity/UIControllerTwoPane;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v2}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/UIControllerTwoPane;->updateMessageList(Z)V

    .line 93
    :cond_0
    return-void
.end method

.method public onMessageOpen(JJJI)V
    .locals 2
    .parameter "messageId"
    .parameter "messageMailboxId"
    .parameter "listMailboxId"
    .parameter "type"

    .prologue
    .line 113
    const/4 v0, 0x1

    if-ne p7, v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->actionEditDraft(Landroid/content/Context;J)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getMessageId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/UIControllerTwoPane;->navigateToMessage(J)V

    .line 118
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->showRightPane()Z

    goto :goto_0
.end method

.method public onParentMailboxChanged()V
    .locals 0

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->refreshActionBar()V

    .line 107
    return-void
.end method

.method protected onRefresh()V
    .locals 7

    .prologue
    .line 519
    new-instance v0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;

    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    iget-object v2, p0, Lcom/android/email/activity/UIControllerTwoPane;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getActualAccountId()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getMessageListMailboxId()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Landroid/content/Context;JJ)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->cancelPreviousAndExecuteParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 521
    return-void
.end method

.method public onReply()V
    .locals 4

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getMessageId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 230
    return-void
.end method

.method public onReplyAll()V
    .locals 4

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getMessageId()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 236
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 304
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerBase;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 305
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 298
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 299
    return-void
.end method

.method public onUrlInMessageClicked(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getActualAccountId()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lcom/android/email/activity/ActivityHelper;->openUrlInMessage(Landroid/app/Activity;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public onVisiblePanesChanged(I)V
    .locals 3
    .parameter "previousVisiblePanes"

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->getVisiblePanes()I

    move-result v0

    .line 74
    .local v0, visiblePanes:I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerTwoPane;->unselectMessage()V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->isMessageListInstalled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v2

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/email/activity/MessageListFragment;->onHidden(Z)V

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->refreshActionBar()V

    .line 84
    return-void

    .line 81
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openInternal(Lcom/android/email/MessageListContext;J)V
    .locals 5
    .parameter "listContext"
    .parameter "messageId"

    .prologue
    const/4 v4, 0x1

    .line 328
    sget-boolean v1, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 329
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 333
    .local v0, ft:Landroid/app/FragmentTransaction;
    invoke-direct {p0, v0, v4}, Lcom/android/email/activity/UIControllerTwoPane;->updateMailboxList(Landroid/app/FragmentTransaction;Z)V

    .line 334
    invoke-direct {p0, v0, v4}, Lcom/android/email/activity/UIControllerTwoPane;->updateMessageList(Landroid/app/FragmentTransaction;Z)V

    .line 336
    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    if-eqz v1, :cond_1

    .line 337
    invoke-direct {p0, v0, p2, p3}, Lcom/android/email/activity/UIControllerTwoPane;->updateMessageView(Landroid/app/FragmentTransaction;J)V

    .line 338
    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->showRightPane()Z

    .line 345
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/email/activity/UIControllerTwoPane;->commitFragmentTransaction(Landroid/app/FragmentTransaction;)V

    .line 346
    return-void

    .line 339
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v1}, Lcom/android/email/MessageListContext;->isSearch()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 340
    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->showRightPane()Z

    .line 341
    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->uncollapsePane()Z

    goto :goto_0

    .line 343
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->showLeftPane()Z

    goto :goto_0
.end method

.method protected updateNavigationArrows()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 473
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane;->getMessageOrderManager()Lcom/android/email/activity/MessageOrderManager;

    move-result-object v0

    .line 474
    .local v0, orderManager:Lcom/android/email/activity/MessageOrderManager;
    if-nez v0, :cond_0

    .line 476
    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/android/email/activity/MessageCommandButtonView;->enableNavigationButtons(ZZII)V

    .line 482
    :goto_0
    return-void

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/UIControllerTwoPane;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->canMoveToNewer()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->canMoveToOlder()Z

    move-result v3

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->getCurrentPosition()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->getTotalMessageCount()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/email/activity/MessageCommandButtonView;->enableNavigationButtons(ZZII)V

    goto :goto_0
.end method
