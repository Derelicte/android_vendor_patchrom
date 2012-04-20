.class Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;
.super Ljava/lang/Object;
.source "UIControllerOnePane.java"

# interfaces
.implements Lcom/android/email/activity/ActionBarController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UIControllerOnePane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarControllerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/UIControllerOnePane;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/UIControllerOnePane;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/UIControllerOnePane;Lcom/android/email/activity/UIControllerOnePane$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;-><init>(Lcom/android/email/activity/UIControllerOnePane;)V

    return-void
.end method


# virtual methods
.method public getMailboxId()J
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    #calls: Lcom/android/email/activity/UIControllerOnePane;->getMailboxId()J
    invoke-static {v0}, Lcom/android/email/activity/UIControllerOnePane;->access$100(Lcom/android/email/activity/UIControllerOnePane;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessageSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->isMessageViewInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->isMessageOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 182
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSearchHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->isMessageListInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 233
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->getSearchHint()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitleMode()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->isMailboxListInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->isMessageViewInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    const/4 v0, 0x3

    goto :goto_0

    .line 175
    :cond_1
    const/16 v0, 0x12

    goto :goto_0
.end method

.method public getUIAccountId()J
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->getUIAccountId()J

    move-result-wide v0

    return-wide v0
.end method

.method public onAccountSelected(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/email/activity/UIControllerOnePane;->switchAccount(JZ)V

    .line 220
    return-void
.end method

.method public onMailboxSelected(JJ)V
    .locals 2
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 205
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    #calls: Lcom/android/email/activity/UIControllerOnePane;->showAllMailboxes()V
    invoke-static {v0}, Lcom/android/email/activity/UIControllerOnePane;->access$200(Lcom/android/email/activity/UIControllerOnePane;)V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/email/activity/UIControllerOnePane;->openMailbox(JJ)V

    goto :goto_0
.end method

.method public onNoAccountsFound()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    iget-object v0, v0, Lcom/android/email/activity/UIControllerOnePane;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 225
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    iget-object v0, v0, Lcom/android/email/activity/UIControllerOnePane;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v0}, Lcom/android/email/activity/EmailActivity;->finish()V

    .line 226
    return-void
.end method

.method public onSearchExit()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->onSearchExit()V

    .line 255
    return-void
.end method

.method public onSearchStarted()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->isMessageListInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->onSearchStarted()V

    goto :goto_0
.end method

.method public onSearchSubmit(Ljava/lang/String;)V
    .locals 1
    .parameter "queryTerm"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->isMessageListInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/UIControllerOnePane;->onSearchSubmit(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldShowUp()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->isMessageViewInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->isMessageListInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    #calls: Lcom/android/email/activity/UIControllerOnePane;->isInboxShown()Z
    invoke-static {v0}, Lcom/android/email/activity/UIControllerOnePane;->access$000(Lcom/android/email/activity/UIControllerOnePane;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->isMailboxListInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
