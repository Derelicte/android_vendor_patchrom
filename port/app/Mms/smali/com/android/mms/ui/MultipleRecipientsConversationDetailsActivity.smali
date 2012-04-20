.class public Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity;
.super Lcom/android/mms/ui/MultipleRecipientsConversationActivity;
.source "MultipleRecipientsConversationDetailsActivity.java"


# instance fields
.field private mTimedValue:J

.field private mTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/mms/ui/MultipleRecipientsConversationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContentViewResId()I
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f040033

    return v0
.end method

.method protected initMessageList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 51
    invoke-super {p0}, Lcom/android/mms/ui/MultipleRecipientsConversationActivity;->initMessageList()V

    .line 52
    iget-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity;->mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/SizeAwareLinearLayout;->setOnMeasureListener(Lcom/android/mms/ui/SizeAwareLinearLayout$OnMeasureListener;)V

    .line 53
    iget-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MessageListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 54
    iget-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setItemsCanFocus(Z)V

    .line 55
    iget-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setClickable(Z)V

    .line 56
    iget-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    new-instance v1, Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity$1;-><init>(Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity;->mAttachmentPanel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    return-void
.end method

.method protected initialize(J)V
    .locals 7
    .parameter "threadId"

    .prologue
    const-wide/16 v5, -0x1

    const-wide/16 v3, 0x0

    .line 34
    invoke-super {p0, p1, p2}, Lcom/android/mms/ui/MultipleRecipientsConversationActivity;->initialize(J)V

    .line 35
    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 36
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "timestamp"

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity;->mTimestamp:J

    .line 37
    const-string v1, "timed_value"

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity;->mTimedValue:J

    .line 38
    cmp-long v1, p1, v3

    if-lez v1, :cond_0

    iget-wide v1, p0, Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity;->mTimestamp:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    iget-wide v1, p0, Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity;->mTimedValue:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity;->finish()V

    .line 42
    :cond_1
    return-void
.end method

.method protected isGroup()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method protected isReadOnly()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method protected startMsgListQuery()V
    .locals 9

    .prologue
    const/16 v1, 0x2537

    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 90
    .local v3, conversationUri:Landroid/net/Uri;
    if-nez v3, :cond_0

    .line 106
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;->cancelOperation(I)V

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;

    const/16 v1, 0x2537

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "normalized_date="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity;->mTimestamp:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND timed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity;->mTimedValue:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v8

    .line 104
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method
