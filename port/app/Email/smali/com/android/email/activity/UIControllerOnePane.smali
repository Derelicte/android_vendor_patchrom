.class Lcom/android/email/activity/UIControllerOnePane;
.super Lcom/android/email/activity/UIControllerBase;
.source "UIControllerOnePane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/UIControllerOnePane$1;,
        Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;
    }
.end annotation


# instance fields
.field private mPreviousFragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/EmailActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/android/email/activity/UIControllerBase;-><init>(Lcom/android/email/activity/EmailActivity;)V

    .line 260
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/UIControllerOnePane;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerOnePane;->isInboxShown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/UIControllerOnePane;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerOnePane;->getMailboxId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/UIControllerOnePane;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerOnePane;->showAllMailboxes()V

    return-void
.end method

.method private getInstalledFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->isMailboxListInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v0

    .line 385
    :goto_0
    return-object v0

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->isMessageListInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    goto :goto_0

    .line 382
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->isMessageViewInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    goto :goto_0

    .line 385
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMailboxId()J
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane;->mListContext:Lcom/android/email/MessageListContext;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v0}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v0

    .line 308
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private isInboxShown()Z
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->isMessageListInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->isInboxList()Z

    move-result v0

    goto :goto_0
.end method

.method private openMailboxList(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 396
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/UIControllerOnePane;->setListContext(Lcom/android/email/MessageListContext;)V

    .line 397
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/email/activity/MailboxListFragment;->newInstance(JJZ)Lcom/android/email/activity/MailboxListFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/UIControllerOnePane;->showFragment(Landroid/app/Fragment;)V

    .line 398
    return-void
.end method

.method private openMessage(J)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 401
    invoke-static {p1, p2}, Lcom/android/email/activity/MessageViewFragment;->newInstance(J)Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/UIControllerOnePane;->showFragment(Landroid/app/Fragment;)V

    .line 402
    return-void
.end method

.method private popFromBackStack()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 502
    iget-object v2, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    if-nez v2, :cond_0

    .line 526
    :goto_0
    return-void

    .line 505
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/UIControllerOnePane;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 506
    .local v0, ft:Landroid/app/FragmentTransaction;
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerOnePane;->getInstalledFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 511
    .local v1, installed:Landroid/app/Fragment;
    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/UIControllerOnePane;->removeFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 514
    iget-object v2, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    instance-of v2, v2, Lcom/android/email/activity/MailboxListFragment;

    if-eqz v2, :cond_1

    .line 515
    invoke-virtual {p0, v3}, Lcom/android/email/activity/UIControllerOnePane;->setListContext(Lcom/android/email/MessageListContext;)V

    .line 522
    :goto_1
    iget-object v2, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 523
    const/16 v2, 0x2002

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 524
    iput-object v3, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    .line 525
    invoke-virtual {p0, v0}, Lcom/android/email/activity/UIControllerOnePane;->commitFragmentTransaction(Landroid/app/FragmentTransaction;)V

    goto :goto_0

    .line 516
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    instance-of v2, v2, Lcom/android/email/activity/MessageListFragment;

    if-eqz v2, :cond_2

    .line 517
    iget-object v2, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    check-cast v2, Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->getListContext()Lcom/android/email/MessageListContext;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/activity/UIControllerOnePane;->setListContext(Lcom/android/email/MessageListContext;)V

    goto :goto_1

    .line 519
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Message view should never be in backstack"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private shouldPopFromBackStack(Z)Z
    .locals 3
    .parameter "isSystemBackKey"

    .prologue
    const/4 v2, 0x0

    .line 467
    iget-object v1, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    if-nez v1, :cond_0

    move v1, v2

    .line 493
    :goto_0
    return v1

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/email/activity/MessageViewFragment;

    if-eqz v1, :cond_1

    .line 471
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Message view should never be in backstack"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 473
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerOnePane;->getInstalledFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 474
    .local v0, installed:Landroid/app/Fragment;
    if-nez v0, :cond_2

    move v1, v2

    .line 476
    goto :goto_0

    .line 481
    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerOnePane;->isInboxShown()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 483
    goto :goto_0

    .line 488
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/email/activity/MessageListFragment;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->isInboxList()Z

    move-result v1

    if-nez v1, :cond_4

    instance-of v1, v0, Lcom/android/email/activity/MailboxListFragment;

    if-eqz v1, :cond_4

    move v1, v2

    .line 491
    goto :goto_0

    .line 493
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showAllMailboxes()V
    .locals 2

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->isAccountSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    :goto_0
    return-void

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->getUIAccountId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/UIControllerOnePane;->openMailboxList(J)V

    goto :goto_0
.end method

.method private showFragment(Landroid/app/Fragment;)V
    .locals 3
    .parameter "fragment"

    .prologue
    .line 413
    iget-object v2, p0, Lcom/android/email/activity/UIControllerOnePane;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 414
    .local v0, ft:Landroid/app/FragmentTransaction;
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerOnePane;->getInstalledFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 415
    .local v1, installed:Landroid/app/Fragment;
    instance-of v2, v1, Lcom/android/email/activity/MessageViewFragment;

    if-eqz v2, :cond_1

    instance-of v2, p1, Lcom/android/email/activity/MessageViewFragment;

    if-eqz v2, :cond_1

    .line 456
    :cond_0
    :goto_0
    const v2, 0x7f0e006f

    invoke-virtual {v0, v2, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 457
    const/16 v2, 0x1001

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 458
    invoke-virtual {p0, v0}, Lcom/android/email/activity/UIControllerOnePane;->commitFragmentTransaction(Landroid/app/FragmentTransaction;)V

    .line 459
    return-void

    .line 425
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    if-eqz v2, :cond_2

    .line 430
    iget-object v2, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    invoke-virtual {p0, v0, v2}, Lcom/android/email/activity/UIControllerOnePane;->removeFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 431
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    .line 434
    :cond_2
    if-eqz v1, :cond_0

    .line 435
    instance-of v2, v1, Lcom/android/email/activity/MessageViewFragment;

    if-eqz v2, :cond_3

    .line 440
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 443
    :cond_3
    iput-object v1, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    .line 448
    iget-object v2, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method


# virtual methods
.method protected createActionBarController(Landroid/app/Activity;)Lcom/android/email/activity/ActionBarController;
    .locals 5
    .parameter "activity"

    .prologue
    .line 268
    new-instance v0, Lcom/android/email/activity/ActionBarController;

    invoke-virtual {p1}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;-><init>(Lcom/android/email/activity/UIControllerOnePane;Lcom/android/email/activity/UIControllerOnePane$1;)V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/email/activity/ActionBarController;-><init>(Landroid/content/Context;Landroid/app/LoaderManager;Landroid/app/ActionBar;Lcom/android/email/activity/ActionBarController$Callback;)V

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 290
    const v0, 0x7f040028

    return v0
.end method

.method protected getMailboxSettingsMailboxId()J
    .locals 2

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->isMessageListInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getUIAccountId()J
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane;->mListContext:Lcom/android/email/MessageListContext;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane;->mListContext:Lcom/android/email/MessageListContext;

    iget-wide v0, v0, Lcom/android/email/MessageListContext;->mAccountId:J

    .line 301
    :goto_0
    return-wide v0

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->isMailboxListInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment;->getAccountId()J

    move-result-wide v0

    goto :goto_0

    .line 301
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected installMailboxListFragment(Lcom/android/email/activity/MailboxListFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->stopMessageOrderManager()V

    .line 540
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerBase;->installMailboxListFragment(Lcom/android/email/activity/MailboxListFragment;)V

    .line 541
    return-void
.end method

.method protected installMessageListFragment(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->stopMessageOrderManager()V

    .line 546
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerBase;->installMessageListFragment(Lcom/android/email/activity/MessageListFragment;)V

    .line 547
    return-void
.end method

.method protected isRefreshEnabled()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 604
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->isActualAccountSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->isMessageViewInstalled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 607
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->isMailboxListInstalled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/UIControllerOnePane;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v1}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isRefreshInProgress()Z
    .locals 3

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->isRefreshEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    const/4 v0, 0x0

    .line 630
    :goto_0
    return v0

    .line 627
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->isMessageListInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane;->mRefreshManager:Lcom/android/email/RefreshManager;

    invoke-direct {p0}, Lcom/android/email/activity/UIControllerOnePane;->getMailboxId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/RefreshManager;->isMessageListRefreshing(J)Z

    move-result v0

    goto :goto_0

    .line 630
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane;->mRefreshManager:Lcom/android/email/RefreshManager;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->getActualAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/RefreshManager;->isMailboxListRefreshing(J)Z

    move-result v0

    goto :goto_0
.end method

.method protected navigateToMessage(J)V
    .locals 0
    .parameter "messageId"

    .prologue
    .line 635
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/UIControllerOnePane;->openMessage(J)V

    .line 636
    return-void
.end method

.method public onAccountSelected(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/email/activity/UIControllerOnePane;->switchAccount(JZ)V

    .line 63
    return-void
.end method

.method public onAdvancingOpAccepted(Ljava/util/Set;)V
    .locals 0
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
    .line 84
    .local p1, affectedMessages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    return-void
.end method

.method public onBackPressed(Z)Z
    .locals 5
    .parameter "isSystemBackKey"

    .prologue
    const/4 v0, 0x1

    .line 313
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 315
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onBackPressed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/UIControllerOnePane;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v1, p1}, Lcom/android/email/activity/ActionBarController;->onBackPressed(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 356
    :cond_1
    :goto_0
    return v0

    .line 322
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->isMailboxListInstalled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxListFragment;->navigateUp()Z

    move-result v1

    if-nez v1, :cond_1

    .line 330
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/email/activity/UIControllerOnePane;->shouldPopFromBackStack(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 334
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerOnePane;->popFromBackStack()V

    goto :goto_0

    .line 339
    :cond_4
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->isMessageViewInstalled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 345
    iget-object v1, p0, Lcom/android/email/activity/UIControllerOnePane;->mListContext:Lcom/android/email/MessageListContext;

    iget-wide v1, v1, Lcom/android/email/MessageListContext;->mAccountId:J

    iget-object v3, p0, Lcom/android/email/activity/UIControllerOnePane;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v3}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/email/activity/UIControllerOnePane;->openMailbox(JJ)V

    goto :goto_0

    .line 347
    :cond_5
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->isMailboxListInstalled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 349
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxListFragment;->getAccountId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/email/activity/UIControllerOnePane;->switchAccount(JZ)V

    goto :goto_0

    .line 351
    :cond_6
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->isMessageListInstalled()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/android/email/activity/UIControllerOnePane;->isInboxShown()Z

    move-result v1

    if-nez v1, :cond_7

    .line 353
    iget-object v1, p0, Lcom/android/email/activity/UIControllerOnePane;->mListContext:Lcom/android/email/MessageListContext;

    iget-wide v1, v1, Lcom/android/email/MessageListContext;->mAccountId:J

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/email/activity/UIControllerOnePane;->switchAccount(JZ)V

    goto :goto_0

    .line 356
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCalendarLinkClicked(J)V
    .locals 1
    .parameter "epochEventStartTime"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v0, p1, p2}, Lcom/android/email/activity/ActivityHelper;->openCalendar(Landroid/app/Activity;J)V

    .line 132
    return-void
.end method

.method public onDragEnded()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public onDragStarted()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public onForward()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->getMessageId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;J)V

    .line 114
    return-void
.end method

.method public onLoadMessageError(Ljava/lang/String;)V
    .locals 0
    .parameter "errorMessage"

    .prologue
    .line 144
    return-void
.end method

.method public onLoadMessageFinished()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public onLoadMessageStarted()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public onMailboxSelected(JJZ)V
    .locals 0
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "nestedNavigation"

    .prologue
    .line 68
    if-eqz p5, :cond_0

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/email/activity/UIControllerOnePane;->openMailbox(JJ)V

    goto :goto_0
.end method

.method public onMessageOpen(JJJI)V
    .locals 1
    .parameter "messageId"
    .parameter "messageMailboxId"
    .parameter "listMailboxId"
    .parameter "type"

    .prologue
    .line 90
    const/4 v0, 0x1

    if-ne p7, v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->actionEditDraft(Landroid/content/Context;J)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/email/activity/UIControllerOnePane;->open(Lcom/android/email/MessageListContext;J)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 585
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 596
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 587
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->moveToNewer()Z

    goto :goto_0

    .line 590
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->moveToOlder()Z

    goto :goto_0

    .line 593
    :pswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerOnePane;->showAllMailboxes()V

    goto :goto_0

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00df
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onParentMailboxChanged()V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->refreshActionBar()V

    .line 78
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z
    .locals 8
    .parameter "inflater"
    .parameter "menu"

    .prologue
    const v7, 0x7f0e00e2

    const v6, 0x7f0e00e1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 559
    invoke-super {p0, p1, p2}, Lcom/android/email/activity/UIControllerBase;->onPrepareOptionsMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z

    .line 562
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->isMessageListInstalled()Z

    move-result v0

    .line 563
    .local v0, messageListVisible:Z
    if-nez v0, :cond_0

    .line 564
    const v3, 0x7f0e00de

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 565
    const v3, 0x7f0e00dd

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 566
    const v3, 0x7f0e00e0

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 567
    const v3, 0x7f0e00df

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 568
    const v3, 0x7f0e00e3

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 571
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->isMessageViewInstalled()Z

    move-result v1

    .line 572
    .local v1, messageViewVisible:Z
    if-eqz v1, :cond_2

    .line 573
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->getMessageOrderManager()Lcom/android/email/activity/MessageOrderManager;

    move-result-object v2

    .line 574
    .local v2, om:Lcom/android/email/activity/MessageOrderManager;
    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 575
    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 577
    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/email/activity/MessageOrderManager;->canMoveToNewer()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_0
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 578
    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/email/activity/MessageOrderManager;->canMoveToOlder()Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v4

    :cond_1
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 580
    .end local v2           #om:Lcom/android/email/activity/MessageOrderManager;
    :cond_2
    return v4

    .restart local v2       #om:Lcom/android/email/activity/MessageOrderManager;
    :cond_3
    move v3, v5

    .line 577
    goto :goto_0
.end method

.method protected onRefresh()V
    .locals 6

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->isRefreshEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    :goto_0
    return-void

    .line 615
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->isMessageListInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane;->mRefreshManager:Lcom/android/email/RefreshManager;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->getActualAccountId()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/android/email/activity/UIControllerOnePane;->getMailboxId()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/RefreshManager;->refreshMessageList(JJZ)Z

    goto :goto_0

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane;->mRefreshManager:Lcom/android/email/RefreshManager;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->getActualAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/RefreshManager;->refreshMailboxList(J)Z

    goto :goto_0
.end method

.method public onReply()V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->getMessageId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 120
    return-void
.end method

.method public onReplyAll()V
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->getMessageId()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 126
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 283
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerBase;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 284
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "UIControllerOnePane.PREVIOUS_FRAGMENT"

    invoke-virtual {v0, p1, v1}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    .line 286
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 274
    invoke-super {p0, p1}, Lcom/android/email/activity/UIControllerBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 275
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "UIControllerOnePane.PREVIOUS_FRAGMENT"

    iget-object v2, p0, Lcom/android/email/activity/UIControllerOnePane;->mPreviousFragment:Landroid/app/Fragment;

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    .line 279
    :cond_0
    return-void
.end method

.method public onUrlInMessageClicked(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->getActualAccountId()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lcom/android/email/activity/ActivityHelper;->openUrlInMessage(Landroid/app/Activity;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public openInternal(Lcom/android/email/MessageListContext;J)V
    .locals 3
    .parameter "listContext"
    .parameter "messageId"

    .prologue
    .line 361
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 363
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " messageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    .line 367
    invoke-direct {p0, p2, p3}, Lcom/android/email/activity/UIControllerOnePane;->openMessage(J)V

    .line 371
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-static {p1}, Lcom/android/email/activity/MessageListFragment;->newInstance(Lcom/android/email/MessageListContext;)Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/UIControllerOnePane;->showFragment(Landroid/app/Fragment;)V

    goto :goto_0
.end method

.method protected updateNavigationArrows()V
    .locals 0

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerOnePane;->refreshActionBar()V

    .line 640
    return-void
.end method
