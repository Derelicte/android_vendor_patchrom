.class public abstract Lcom/android/mms/ui/ConversationBase;
.super Lcom/android/mms/ui/MessageEditableActivityBase;
.source "ConversationBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationBase$ModeCallback;,
        Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;,
        Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;,
        Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;,
        Lcom/android/mms/ui/ConversationBase$PduBodyCache;,
        Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;
    }
.end annotation


# static fields
.field private static final SAVE_ATTACHMENT_DIRECTORY:Ljava/lang/String;

.field private static mBatchDeleteProgressDialog:Landroid/app/ProgressDialog;


# instance fields
.field private mBackPressed:Z

.field protected mBackgroundQueryHandler:Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;

.field private mBatchDeleteTaskCount:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

.field private mInResetMessageAnimation:Z

.field private mInitTargetMessageId:J

.field private mListItemStyle:Ljava/lang/String;

.field private final mMessageListItemHandler:Landroid/os/Handler;

.field private mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

.field private final mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field protected mMsgListView:Lcom/android/mms/ui/MessageListView;

.field private mNewMessageCount:I

.field private mOldTimeToSend:J

.field private mPaddingView:Landroid/view/View;

.field private mPendingChangeCursor:Landroid/database/Cursor;

.field private mPossiblePendingNotification:Z

.field private mSentMessage:Z

.field private wasSoftKeyboardEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    sput-object v0, Lcom/android/mms/ui/ConversationBase;->SAVE_ATTACHMENT_DIRECTORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;-><init>()V

    .line 142
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationBase;->mBackPressed:Z

    .line 453
    new-instance v0, Lcom/android/mms/ui/ConversationBase$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationBase$3;-><init>(Lcom/android/mms/ui/ConversationBase;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1232
    new-instance v0, Lcom/android/mms/ui/ConversationBase$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationBase$7;-><init>(Lcom/android/mms/ui/ConversationBase;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMessageListItemHandler:Landroid/os/Handler;

    .line 1297
    new-instance v0, Lcom/android/mms/ui/ConversationBase$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationBase$8;-><init>(Lcom/android/mms/ui/ConversationBase;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    .line 1378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mPendingChangeCursor:Landroid/database/Cursor;

    .line 1569
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationBase;->mInResetMessageAnimation:Z

    .line 1585
    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/ConversationBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationBase;->wasSoftKeyboardEnabled:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ConversationBase;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationBase;->copyToClipboard(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ConversationBase;Landroid/content/DialogInterface$OnClickListener;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationBase;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;ZZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ConversationBase;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->copyMedia(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/mms/ui/ConversationBase;->SAVE_ATTACHMENT_DIRECTORY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ConversationBase;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->copyToDrmProvider(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ConversationBase;JZ)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationBase;->getDrmMimeSavedStringRsrc(JZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/MessageItem;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/mms/ui/ConversationBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationBase;->mSentMessage:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/android/mms/ui/ConversationBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationBase;->mPossiblePendingNotification:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/ConversationBase;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationBase;->requestChangeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationBase;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/mms/ui/ConversationBase;->mBatchDeleteTaskCount:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/ConversationBase;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mListItemStyle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/ConversationBase;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/mms/ui/ConversationBase;->mBatchDeleteTaskCount:I

    return p1
.end method

.method static synthetic access$208(Lcom/android/mms/ui/ConversationBase;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/mms/ui/ConversationBase;->mBatchDeleteTaskCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/mms/ui/ConversationBase;->mBatchDeleteTaskCount:I

    return v0
.end method

.method static synthetic access$210(Lcom/android/mms/ui/ConversationBase;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/mms/ui/ConversationBase;->mBatchDeleteTaskCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/mms/ui/ConversationBase;->mBatchDeleteTaskCount:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationBase;->confirmBatchDeleteDialog(Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;IZ)V

    return-void
.end method

.method static synthetic access$300()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/mms/ui/ConversationBase;->mBatchDeleteProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$302(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    sput-object p0, Lcom/android/mms/ui/ConversationBase;->mBatchDeleteProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ConversationBase;)Lcom/android/mms/ui/MessageListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ConversationBase;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->haveSomethingToCopyToSDCard(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ConversationBase;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->haveSomethingToCopyToDrmProvider(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ConversationBase;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->getDrmMimeMenuStringRsrc(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ConversationBase;Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ConversationBase;->getMessageItem(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationBase;->editMessageItem(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method public static cancelFailedToDeliverNotification(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 1
    .parameter "intent"
    .parameter "context"

    .prologue
    .line 230
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isFailedToDeliver(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const/16 v0, 0x315

    invoke-static {p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 234
    const/4 v0, 0x1

    .line 236
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private changeCursor(Landroid/database/Cursor;)V
    .locals 11
    .parameter "cursor"

    .prologue
    const-wide/16 v9, -0x1

    const/4 v4, 0x1

    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 1390
    const/4 v3, -0x1

    .line 1392
    .local v3, newSelectionPos:I
    iget-wide v6, p0, Lcom/android/mms/ui/ConversationBase;->mInitTargetMessageId:J

    cmp-long v6, v6, v9

    if-eqz v6, :cond_2

    .line 1393
    invoke-interface {p1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1394
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1395
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1396
    .local v1, msgId:J
    iget-wide v6, p0, Lcom/android/mms/ui/ConversationBase;->mInitTargetMessageId:J

    cmp-long v6, v1, v6

    if-nez v6, :cond_0

    .line 1397
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 1401
    .end local v1           #msgId:J
    :cond_1
    iput-wide v9, p0, Lcom/android/mms/ui/ConversationBase;->mInitTargetMessageId:J

    .line 1405
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_6

    .line 1406
    .local v4, wasEmpty:Z
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    iget-object v7, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v7

    sub-int v0, v6, v7

    .line 1408
    .local v0, addedItem:I
    iget-object v6, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v6, p1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1411
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->isReadOnly()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1412
    if-eq v3, v8, :cond_7

    .line 1413
    iget-object v6, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageListView;->getHeaderViewsCount()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/MessageListView;->setSelection(I)V

    .line 1430
    :cond_3
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationBase;->mSentMessage:Z

    if-nez v6, :cond_4

    .line 1431
    iget-object v6, p0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 1432
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->finish()V

    .line 1435
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_5

    .line 1436
    iput-boolean v5, p0, Lcom/android/mms/ui/ConversationBase;->mSentMessage:Z

    .line 1441
    :cond_5
    iget-object v6, p0, Lcom/android/mms/ui/ConversationBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    .line 1443
    iget-object v6, p0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6, v5}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 1444
    return-void

    .end local v0           #addedItem:I
    .end local v4           #wasEmpty:Z
    :cond_6
    move v4, v5

    .line 1405
    goto :goto_0

    .line 1414
    .restart local v0       #addedItem:I
    .restart local v4       #wasEmpty:Z
    :cond_7
    iget v6, p0, Lcom/android/mms/ui/ConversationBase;->mNewMessageCount:I

    if-lez v6, :cond_8

    .line 1415
    iget v6, p0, Lcom/android/mms/ui/ConversationBase;->mNewMessageCount:I

    invoke-direct {p0, v6}, Lcom/android/mms/ui/ConversationBase;->showAddMessageAnimation(I)V

    .line 1416
    iput v5, p0, Lcom/android/mms/ui/ConversationBase;->mNewMessageCount:I

    goto :goto_1

    .line 1417
    :cond_8
    if-eqz v4, :cond_9

    .line 1418
    iget-object v6, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iget-object v8, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageListView;->getHeaderViewsCount()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/MessageListView;->setSelection(I)V

    goto :goto_1

    .line 1419
    :cond_9
    if-lez v0, :cond_3

    .line 1420
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationBase;->showAddMessageAnimation(I)V

    goto :goto_1
.end method

.method private checkPendingNotification()V
    .locals 1

    .prologue
    .line 1291
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mPossiblePendingNotification:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->markAsReadAsync()V

    .line 1293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mPossiblePendingNotification:Z

    .line 1295
    :cond_0
    return-void
.end method

.method private confirmBatchDeleteDialog(Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;IZ)V
    .locals 10
    .parameter "listener"
    .parameter "affacted"
    .parameter "hasLockedMessages"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 892
    const v4, 0x7f040009

    invoke-static {p0, v4, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 893
    .local v2, contents:Landroid/view/View;
    const v4, 0x7f100026

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 894
    .local v3, msg:Landroid/widget/TextView;
    const v4, 0x7f0a0182

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/mms/ui/ConversationBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 895
    const v4, 0x7f100027

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 896
    .local v1, checkbox:Landroid/widget/CheckBox;
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 897
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 907
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 908
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0a009d

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a00a5

    invoke-virtual {v4, v5, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0078

    invoke-virtual {v4, v5, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 914
    return-void

    .line 899
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;->setDeleteLockedMessage(Z)V

    .line 900
    new-instance v4, Lcom/android/mms/ui/ConversationBase$5;

    invoke-direct {v4, p0, p1, v1}, Lcom/android/mms/ui/ConversationBase$5;-><init>(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;ZZ)V
    .locals 6
    .parameter "listener"
    .parameter "locked"
    .parameter "isGroup"

    .prologue
    const v4, 0x7f0a009d

    .line 870
    if-eqz p2, :cond_0

    const v3, 0x7f0a009e

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 872
    .local v2, title:Ljava/lang/String;
    const-string v1, ""

    .line 873
    .local v1, message:Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 874
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 875
    const v3, 0x7f0a00a1

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 881
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 882
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a00a5

    invoke-virtual {v3, v4, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0078

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 888
    return-void

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #title:Ljava/lang/String;
    :cond_0
    move v3, v4

    .line 870
    goto :goto_0

    .line 877
    .restart local v1       #message:Ljava/lang/String;
    .restart local v2       #title:Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    const v3, 0x7f0a00a3

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const v3, 0x7f0a00a2

    goto :goto_2
.end method

.method private copyMedia(J)Z
    .locals 7
    .parameter "msgId"

    .prologue
    .line 1032
    const/4 v4, 0x1

    .line 1033
    .local v4, result:Z
    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/mms/ui/ConversationBase$PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 1035
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    if-nez v0, :cond_0

    .line 1036
    const/4 v6, 0x0

    .line 1049
    :goto_0
    return v6

    .line 1039
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    .line 1040
    .local v3, partNum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 1041
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 1042
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 1044
    .local v5, type:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "application/ogg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1046
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lcom/android/mms/ui/ConversationBase;->copyPart(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z

    move-result v6

    and-int/2addr v4, v6

    .line 1040
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v5           #type:Ljava/lang/String;
    :cond_3
    move v6, v4

    .line 1049
    goto :goto_0
.end method

.method private copyPart(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v11, -0x1

    const/4 v3, 0x0

    .line 1064
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    .line 1067
    const/4 v7, 0x0

    .line 1069
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9

    move-result-object v2

    .line 1070
    :try_start_1
    instance-of v1, v2, Ljava/io/FileInputStream;

    if-eqz v1, :cond_e

    .line 1071
    move-object v0, v2

    check-cast v0, Ljava/io/FileInputStream;

    move-object v1, v0

    .line 1073
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v5

    .line 1074
    if-nez v5, :cond_0

    .line 1075
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v5

    .line 1077
    :cond_0
    if-nez v5, :cond_1

    .line 1078
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v5

    .line 1082
    :cond_1
    if-nez v5, :cond_4

    move-object v5, p2

    .line 1089
    :goto_0
    invoke-direct {p0, v5, p2}, Lcom/android/mms/ui/ConversationBase;->getFileNameFromPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1092
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, Lcom/android/mms/ui/ConversationBase;->SAVE_ATTACHMENT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1096
    const-string v5, "."

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v11, :cond_5

    .line 1097
    new-instance v5, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/String;-><init>([B)V

    .line 1098
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1104
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v5}, Lcom/android/mms/ui/ConversationBase;->getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 1107
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 1108
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v8

    if-nez v8, :cond_6

    .line 1109
    const-string v1, "ConversationBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[MMS] copyPart: mkdirs for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 1131
    if-eqz v2, :cond_2

    .line 1133
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1140
    :cond_2
    if-eqz v4, :cond_3

    .line 1142
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    move v1, v3

    .line 1150
    :goto_2
    return v1

    .line 1086
    :cond_4
    :try_start_4
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 1087
    const-string v5, "[?|*]"

    const-string v8, "_"

    invoke-virtual {v6, v5, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 1100
    :cond_5
    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1101
    const/4 v10, 0x0

    invoke-virtual {v6, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    move-result-object v6

    goto :goto_1

    .line 1134
    :catch_0
    move-exception v1

    .line 1136
    const-string v2, "ConversationBase"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 1137
    goto :goto_2

    .line 1143
    :catch_1
    move-exception v1

    .line 1145
    const-string v2, "ConversationBase"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 1146
    goto :goto_2

    .line 1113
    :cond_6
    :try_start_5
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a

    .line 1115
    const/16 v4, 0x1f40

    :try_start_6
    new-array v4, v4, [B

    .line 1117
    :goto_3
    invoke-virtual {v1, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    if-eq v7, v11, :cond_9

    .line 1118
    const/4 v8, 0x0

    invoke-virtual {v5, v4, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 1126
    :catch_2
    move-exception v1

    move-object v4, v2

    move-object v2, v5

    .line 1128
    :goto_4
    :try_start_7
    const-string v5, "ConversationBase"

    const-string v6, "IOException caught while opening or reading stream"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1131
    if-eqz v4, :cond_7

    .line 1133
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1140
    :cond_7
    if-eqz v2, :cond_8

    .line 1142
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_8
    move v1, v3

    .line 1146
    goto :goto_2

    .line 1123
    :cond_9
    :try_start_a
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationBase;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 1131
    :goto_5
    if-eqz v2, :cond_a

    .line 1133
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 1140
    :cond_a
    if-eqz v5, :cond_b

    .line 1142
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 1150
    :cond_b
    const/4 v1, 0x1

    goto :goto_2

    .line 1134
    :catch_3
    move-exception v1

    .line 1136
    const-string v2, "ConversationBase"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 1137
    goto/16 :goto_2

    .line 1143
    :catch_4
    move-exception v1

    .line 1145
    const-string v2, "ConversationBase"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 1146
    goto/16 :goto_2

    .line 1134
    :catch_5
    move-exception v1

    .line 1136
    const-string v2, "ConversationBase"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 1137
    goto/16 :goto_2

    .line 1143
    :catch_6
    move-exception v1

    .line 1145
    const-string v2, "ConversationBase"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 1146
    goto/16 :goto_2

    .line 1131
    :catchall_0
    move-exception v1

    move-object v2, v4

    :goto_6
    if-eqz v2, :cond_c

    .line 1133
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 1140
    :cond_c
    if-eqz v4, :cond_d

    .line 1142
    :try_start_e
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 1146
    :cond_d
    throw v1

    .line 1134
    :catch_7
    move-exception v1

    .line 1136
    const-string v2, "ConversationBase"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 1137
    goto/16 :goto_2

    .line 1143
    :catch_8
    move-exception v1

    .line 1145
    const-string v2, "ConversationBase"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 1146
    goto/16 :goto_2

    .line 1131
    :catchall_1
    move-exception v1

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v4, v5

    goto :goto_6

    :catchall_3
    move-exception v1

    move-object v12, v2

    move-object v2, v4

    move-object v4, v12

    goto :goto_6

    .line 1126
    :catch_9
    move-exception v1

    move-object v2, v4

    goto/16 :goto_4

    :catch_a
    move-exception v1

    move-object v12, v4

    move-object v4, v2

    move-object v2, v12

    goto/16 :goto_4

    :cond_e
    move-object v5, v4

    goto :goto_5
.end method

.method private copyPartToDrmProvider(Lcom/google/android/mms/pdu/PduPart;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 977
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    .line 979
    const/4 v2, 0x0

    .line 981
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 982
    instance-of v1, v2, Ljava/io/FileInputStream;

    if-eqz v1, :cond_3

    .line 983
    move-object v0, v2

    check-cast v0, Ljava/io/FileInputStream;

    move-object v1, v0

    .line 986
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v4

    .line 987
    if-nez v4, :cond_0

    .line 988
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v4

    .line 990
    :cond_0
    if-nez v4, :cond_7

    .line 991
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v4

    move-object v5, v4

    .line 996
    :goto_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 998
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    .line 999
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1003
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v1, v4}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/ContentResolver;Ljava/io/FileInputStream;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1004
    if-nez v1, :cond_3

    .line 1005
    const-string v1, "ConversationBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to add file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to DrmProvider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1014
    if-eqz v2, :cond_2

    .line 1016
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    move v1, v3

    .line 1024
    :goto_1
    return v1

    .line 1017
    :catch_0
    move-exception v1

    .line 1019
    const-string v2, "ConversationBase"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 1020
    goto :goto_1

    .line 1014
    :cond_3
    if-eqz v2, :cond_4

    .line 1016
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1024
    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    .line 1017
    :catch_1
    move-exception v1

    .line 1019
    const-string v2, "ConversationBase"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 1020
    goto :goto_1

    .line 1009
    :catch_2
    move-exception v1

    .line 1011
    :try_start_3
    const-string v4, "ConversationBase"

    const-string v5, "IOException caught while opening or reading stream"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1014
    if-eqz v2, :cond_5

    .line 1016
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    move v1, v3

    .line 1020
    goto :goto_1

    .line 1017
    :catch_3
    move-exception v1

    .line 1019
    const-string v2, "ConversationBase"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 1020
    goto :goto_1

    .line 1014
    :catchall_0
    move-exception v1

    if-eqz v2, :cond_6

    .line 1016
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1020
    :cond_6
    throw v1

    .line 1017
    :catch_4
    move-exception v1

    .line 1019
    const-string v2, "ConversationBase"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 1020
    goto :goto_1

    :cond_7
    move-object v5, v4

    goto/16 :goto_0
.end method

.method private copyToClipboard(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 971
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 973
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 974
    return-void
.end method

.method private copyToDrmProvider(J)Z
    .locals 7
    .parameter "msgId"

    .prologue
    .line 929
    const/4 v4, 0x1

    .line 930
    .local v4, result:Z
    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/mms/ui/ConversationBase$PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 932
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    if-nez v0, :cond_0

    .line 933
    const/4 v6, 0x0

    .line 947
    :goto_0
    return v6

    .line 936
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    .line 937
    .local v3, partNum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 938
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 939
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 941
    .local v5, type:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 944
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ConversationBase;->copyPartToDrmProvider(Lcom/google/android/mms/pdu/PduPart;)Z

    move-result v6

    and-int/2addr v4, v6

    .line 937
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v5           #type:Ljava/lang/String;
    :cond_2
    move v6, v4

    .line 947
    goto :goto_0
.end method

.method private editMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .parameter "msgItem"

    .prologue
    .line 1163
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1164
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationBase;->editSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    .line 1168
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 1171
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->updateSendButtonState()V

    .line 1172
    return-void

    .line 1166
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationBase;->editMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0
.end method

.method private editMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 3
    .parameter "msgItem"

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 1200
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/data/WorkingMessage;->load(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 1201
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 1203
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentView;->update(Lcom/android/mms/data/WorkingMessage;)V

    .line 1204
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->drawTopPanel()V

    .line 1209
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSubject()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1211
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationBase;->showSubjectEditor(Z)V

    .line 1214
    :cond_0
    return-void
.end method

.method private editSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 5
    .parameter "msgItem"

    .prologue
    const/4 v4, 0x0

    .line 1182
    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    monitor-enter v2

    .line 1183
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_0

    .line 1184
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 1186
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1188
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1189
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v1, v0, v4, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1192
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 1193
    return-void

    .line 1186
    .end local v0           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getDrmMimeMenuStringRsrc(J)I
    .locals 2
    .parameter "msgId"

    .prologue
    .line 595
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->getDrmMimeType(J)Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, mimeType:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationBase;->isAudioMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    const v1, 0x7f0a00f5

    .line 599
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDrmMimeSavedStringRsrc(JZ)I
    .locals 2
    .parameter "msgId"
    .parameter "success"

    .prologue
    .line 917
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->getDrmMimeType(J)Ljava/lang/String;

    move-result-object v0

    .line 918
    .local v0, mimeType:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationBase;->isAudioMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 919
    if-eqz p3, :cond_0

    const v1, 0x7f0a00f6

    .line 921
    :goto_0
    return v1

    .line 919
    :cond_0
    const v1, 0x7f0a00f7

    goto :goto_0

    .line 921
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDrmMimeType(J)Ljava/lang/String;
    .locals 7
    .parameter "msgId"

    .prologue
    const/4 v5, 0x0

    .line 642
    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/mms/ui/ConversationBase$PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 644
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    if-nez v0, :cond_1

    .line 657
    :cond_0
    :goto_0
    return-object v5

    .line 648
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    .line 649
    .local v3, partNum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 650
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 651
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    .line 653
    .local v4, type:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 654
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ConversationBase;->mimeTypeOfDrmPart(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 649
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getFileNameFromPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fullpath"
    .parameter "fallback"

    .prologue
    .line 1053
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1054
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 1055
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1056
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 1060
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .restart local p2
    :cond_1
    move-object p2, p1

    goto :goto_0
.end method

.method private getMessageDate(Landroid/net/Uri;)J
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 261
    if-eqz p1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mContentResolver:Landroid/content/ContentResolver;

    new-array v3, v8, [Ljava/lang/String;

    const-string v0, "date_full"

    aput-object v0, v3, v2

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 264
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 266
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 270
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 274
    .end local v7           #cursor:Landroid/database/Cursor;
    :goto_0
    return-wide v0

    .line 270
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 274
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 270
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getMessageItem(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;
    .locals 2
    .parameter "type"
    .parameter "msgId"
    .parameter "createFromCursorIfNotInCache"

    .prologue
    .line 1228
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1154
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1156
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1157
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1159
    :cond_0
    return-object v1
.end method

.method private haveSomethingToCopyToDrmProvider(J)Z
    .locals 2
    .parameter "msgId"

    .prologue
    .line 666
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->getDrmMimeType(J)Ljava/lang/String;

    move-result-object v0

    .line 667
    .local v0, mimeType:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationBase;->isAudioMimeType(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private haveSomethingToCopyToSDCard(J)Z
    .locals 9
    .parameter "msgId"

    .prologue
    .line 675
    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/mms/ui/ConversationBase$PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 677
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    if-nez v0, :cond_1

    .line 678
    const/4 v4, 0x0

    .line 697
    :cond_0
    :goto_0
    return v4

    .line 681
    :cond_1
    const/4 v4, 0x0

    .line 682
    .local v4, result:Z
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    .line 683
    .local v3, partNum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 684
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 685
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 687
    .local v5, type:Ljava/lang/String;
    const-string v6, "Mms:app"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 688
    const-string v6, "ConversationBase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CMA] haveSomethingToCopyToSDCard: part["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] contentType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_2
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "application/ogg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 693
    :cond_3
    const/4 v4, 0x1

    .line 694
    goto :goto_0

    .line 683
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initLayoutStyle()V
    .locals 6

    .prologue
    const v5, 0x7f100086

    .line 424
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 425
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-static {p0, v2}, Lcom/android/mms/ui/MessageUtils;->getConversationStyle(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/ConversationBase;->mListItemStyle:Ljava/lang/String;

    .line 426
    iget-object v3, p0, Lcom/android/mms/ui/ConversationBase;->mListItemStyle:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->getConversationGroupByTime(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v1

    .line 427
    .local v1, groupByTime:Z
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getPrefNotificationEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->getDeliverReportMode(Landroid/content/SharedPreferences;Z)I

    move-result v0

    .line 428
    .local v0, deliverReportMode:I
    iget-object v3, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationBase;->mListItemStyle:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v0}, Lcom/android/mms/ui/MessageListAdapter;->initLayoutStyle(Ljava/lang/String;ZI)V

    .line 429
    iget-object v3, p0, Lcom/android/mms/ui/ConversationBase;->mListItemStyle:Ljava/lang/String;

    sget-object v4, Lcom/android/mms/ui/MessageListItem$Style;->list:Lcom/android/mms/ui/MessageListItem$Style;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListItem$Style;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 430
    iget-object v3, p0, Lcom/android/mms/ui/ConversationBase;->mPaddingView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 435
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const v4, 0x7f0200c3

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessageListView;->setSelector(I)V

    .line 433
    iget-object v3, p0, Lcom/android/mms/ui/ConversationBase;->mPaddingView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private isAudioMimeType(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 591
    if-eqz p1, :cond_0

    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lockMessage(Lcom/android/mms/ui/MessageItem;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 952
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 957
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 959
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 960
    const-string v4, "locked"

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 962
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ConversationBase$6;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/mms/ui/ConversationBase$6;-><init>(Lcom/android/mms/ui/ConversationBase;Landroid/net/Uri;Landroid/content/ContentValues;)V

    const-string v2, "lockMessage"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 968
    return-void

    .line 955
    :cond_0
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 960
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private mimeTypeOfDrmPart(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;
    .locals 10
    .parameter "part"

    .prologue
    .line 603
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    .line 604
    .local v6, uri:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 606
    .local v4, input:Ljava/io/InputStream;
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/ui/ConversationBase;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 607
    instance-of v7, v4, Ljava/io/FileInputStream;

    if-eqz v7, :cond_1

    .line 608
    move-object v0, v4

    check-cast v0, Ljava/io/FileInputStream;

    move-object v3, v0

    .line 610
    .local v3, fin:Ljava/io/FileInputStream;
    new-instance v1, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v7

    const-string v8, "application/vnd.oma.drm.message"

    invoke-direct {v1, v3, v7, v8}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 612
    .local v1, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual {v1}, Landroid/drm/mobile1/DrmRawContent;->getContentType()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v5

    .line 621
    .local v5, mimeType:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 623
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 630
    .end local v1           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v3           #fin:Ljava/io/FileInputStream;
    .end local v5           #mimeType:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 624
    .restart local v1       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    .restart local v5       #mimeType:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 626
    .local v2, e:Ljava/io/IOException;
    const-string v7, "ConversationBase"

    const-string v8, "IOException caught while closing stream"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 621
    .end local v1           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fin:Ljava/io/FileInputStream;
    .end local v5           #mimeType:Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_2

    .line 623
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 630
    :cond_2
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 624
    :catch_1
    move-exception v2

    .line 626
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "ConversationBase"

    const-string v8, "IOException caught while closing stream"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 615
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 617
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_3
    const-string v7, "ConversationBase"

    const-string v8, "IOException caught while opening or reading stream"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 621
    if-eqz v4, :cond_2

    .line 623
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 624
    :catch_3
    move-exception v2

    .line 626
    const-string v7, "ConversationBase"

    const-string v8, "IOException caught while closing stream"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 618
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 619
    .local v2, e:Landroid/drm/mobile1/DrmException;
    :try_start_5
    const-string v7, "ConversationBase"

    const-string v8, "DrmException caught "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 621
    if-eqz v4, :cond_2

    .line 623
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_1

    .line 624
    :catch_5
    move-exception v2

    .line 626
    .local v2, e:Ljava/io/IOException;
    const-string v7, "ConversationBase"

    const-string v8, "IOException caught while closing stream"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 621
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v4, :cond_3

    .line 623
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 627
    :cond_3
    :goto_2
    throw v7

    .line 624
    :catch_6
    move-exception v2

    .line 626
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "ConversationBase"

    const-string v9, "IOException caught while closing stream"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private requestChangeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 1382
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mInResetMessageAnimation:Z

    if-eqz v0, :cond_0

    .line 1383
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase;->mPendingChangeCursor:Landroid/database/Cursor;

    .line 1387
    :goto_0
    return-void

    .line 1385
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationBase;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private setTimeToSend(J)V
    .locals 7
    .parameter "timeToSend"

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/mms/ui/ConversationBase;->mOldTimeToSend:J

    move-object v0, p0

    move-wide v5, p1

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils;->setMessageSendTime(Landroid/content/Context;JJJ)V

    .line 1707
    invoke-static {p0}, Lcom/android/mms/transaction/TimedMessageReceiver;->scheduleNextTimedMsg(Landroid/content/Context;)V

    .line 1708
    return-void
.end method

.method private showAddMessageAnimation(I)V
    .locals 15
    .parameter

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .line 1456
    if-gez v8, :cond_1

    .line 1567
    :cond_0
    :goto_0
    return-void

    .line 1460
    :cond_1
    sub-int v4, v8, p1

    .line 1461
    const/4 v0, -0x1

    if-lt v4, v0, :cond_0

    .line 1465
    const-string v0, "ConversationBase"

    const-string v1, "lastPosAfterAdd = %d lastPosBeforeAdd = %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    const v0, 0x7f100083

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationBase;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1467
    const v0, 0x7f100084

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1468
    const v1, 0x7f100085

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1470
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1471
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1473
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v10

    .line 1476
    const/4 v3, 0x0

    .line 1477
    add-int/lit8 v2, v4, 0x1

    move v7, v3

    :goto_1
    if-gt v2, v8, :cond_2

    .line 1478
    iget-object v3, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/MessageListAdapter;->getItemViewType(I)I

    .line 1479
    iget-object v3, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3, v2, v5, v6}, Lcom/android/mms/ui/MessageListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1480
    const/high16 v3, 0x4000

    invoke-static {v10, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/view/View;->measure(II)V

    .line 1483
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v7

    .line 1484
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1477
    add-int/lit8 v2, v2, 0x1

    move v7, v3

    goto :goto_1

    .line 1486
    :cond_2
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1487
    const-string v2, "ConversationBase"

    const-string v3, "newMessagesHeight=%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->getLastVisiblePosition()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 1493
    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1497
    :goto_2
    iget-object v3, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v7

    .line 1498
    const-string v5, "ConversationBase"

    const-string v6, "oldMsgInitialBottom = %d oldMsgFinalBottom = %d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    const/4 v5, 0x0

    move v14, v4

    move v4, v5

    move v5, v14

    .line 1503
    :goto_3
    if-ltz v5, :cond_5

    sub-int v6, v3, v4

    if-gez v6, :cond_3

    sub-int v6, v2, v4

    if-ltz v6, :cond_5

    .line 1505
    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v6, v5}, Lcom/android/mms/ui/MessageListAdapter;->getItemViewType(I)I

    .line 1506
    iget-object v6, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v6, v5, v11, v12}, Lcom/android/mms/ui/MessageListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1507
    const/4 v11, 0x0

    invoke-virtual {v0, v6, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1508
    const/high16 v11, 0x4000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Landroid/view/View;->measure(II)V

    .line 1511
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v4

    .line 1512
    add-int/lit8 v4, v5, -0x1

    move v5, v4

    move v4, v6

    .line 1513
    goto :goto_3

    .line 1495
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->getHeight()I

    move-result v2

    goto :goto_2

    .line 1514
    :cond_5
    sub-int v5, v3, v4

    if-ltz v5, :cond_9

    move v6, v4

    .line 1517
    :goto_4
    sub-int v3, v2, v4

    if-ltz v3, :cond_8

    move v3, v4

    .line 1522
    :goto_5
    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->getHeight()I

    move-result v2

    add-int v5, v6, v7

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1526
    const-string v2, "ConversationBase"

    const-string v7, "newMsgInitialTop = %d newMsgFinalTop = %d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    sub-int v7, v6, v4

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1529
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1530
    const-string v2, "ConversationBase"

    const-string v7, "totalOldMsgHeight=%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v11

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1534
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x0

    const/4 v10, 0x0

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/4 v11, 0x0

    invoke-direct {v7, v4, v10, v5, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1535
    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationBase;->mAllowAnimation:Z

    if-eqz v4, :cond_6

    const-wide/16 v4, 0x12c

    :goto_6
    invoke-virtual {v7, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1536
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v10, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1537
    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationBase;->mAllowAnimation:Z

    if-eqz v4, :cond_7

    const-wide/16 v4, 0x12c

    :goto_7
    invoke-virtual {v10, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1538
    invoke-virtual {v2, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1539
    invoke-virtual {v2, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1540
    new-instance v4, Lcom/android/mms/ui/ConversationBase$9;

    invoke-direct {v4, p0, v9, v8, v6}, Lcom/android/mms/ui/ConversationBase$9;-><init>(Lcom/android/mms/ui/ConversationBase;Landroid/view/View;II)V

    invoke-virtual {v2, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1558
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1561
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v4, 0x0

    sub-int/2addr v3, v6

    int-to-float v3, v3

    const/4 v5, 0x0

    invoke-direct {v1, v2, v4, v3, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1562
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1563
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1565
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1566
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1535
    :cond_6
    const-wide/16 v4, 0x0

    goto :goto_6

    .line 1537
    :cond_7
    const-wide/16 v4, 0x0

    goto :goto_7

    :cond_8
    move v3, v2

    goto/16 :goto_5

    :cond_9
    move v6, v3

    goto/16 :goto_4
.end method

.method private updateSendFailedNotification()V
    .locals 5

    .prologue
    .line 576
    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 577
    .local v0, threadId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 588
    :goto_0
    return-void

    .line 582
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/ConversationBase$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/ConversationBase$4;-><init>(Lcom/android/mms/ui/ConversationBase;J)V

    const-string v4, "updateSendFailedNotification"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method protected getRecipients()Lcom/android/mms/data/ContactList;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    return-object v0
.end method

.method protected initMessageList()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 400
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_0

    .line 421
    :goto_0
    return-void

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "highlight"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 405
    .local v10, highlightString:Ljava/lang/String;
    if-nez v10, :cond_1

    move-object v5, v2

    .line 410
    .local v5, highlight:Ljava/util/regex/Pattern;
    :goto_1
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->isGroup()Z

    move-result v6

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->isReadOnly()Z

    move-result v7

    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v8

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/mms/ui/MessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;ZZJ)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    .line 412
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setOnDataSetChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V

    .line 413
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mMessageListItemHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 415
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04002a

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mPaddingView:Landroid/view/View;

    .line 416
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mPaddingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->addHeaderView(Landroid/view/View;)V

    .line 417
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 418
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/MessageListView;->setItemsCanFocus(Z)V

    .line 419
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_0

    .line 405
    .end local v5           #highlight:Ljava/util/regex/Pattern;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    goto :goto_1
.end method

.method protected initResourceRefs()V
    .locals 3

    .prologue
    .line 303
    invoke-super {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->initResourceRefs()V

    .line 304
    const v0, 0x7f100082

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    .line 317
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    new-instance v1, Lcom/android/mms/ui/ConversationBase$ModeCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ConversationBase$ModeCallback;-><init>(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/ConversationBase$1;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessageListView;->setEditModeListener(Lcom/android/mms/util/EditableListView$EditModeListener;Z)V

    .line 318
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    new-instance v1, Lcom/android/mms/ui/ConversationBase$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationBase$2;-><init>(Lcom/android/mms/ui/ConversationBase;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 330
    return-void
.end method

.method protected initialize(J)V
    .locals 5
    .parameter "threadId"

    .prologue
    const/4 v4, 0x0

    .line 207
    invoke-static {p0, p1, p2, v4}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    .line 209
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/mms/ui/ConversationBase;->cancelFailedToDeliverNotification(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationBase;->getMessageDate(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/ConversationBase;->undeliveredMessageDialog(J)V

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 217
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "select_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/ui/ConversationBase;->mInitTargetMessageId:J

    .line 218
    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent_extra_data_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/ui/ConversationBase;->mInitTargetMessageId:J

    .line 222
    :cond_1
    const-string v1, "new_message_count"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/ConversationBase;->mNewMessageCount:I

    .line 223
    const-string v1, "was_soft_keyboard_on"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationBase;->wasSoftKeyboardEnabled:Z

    .line 225
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->initMessageList()V

    .line 226
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->initialize()V

    .line 227
    return-void
.end method

.method protected isGroup()Z
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method public isPreparedForSending()Z
    .locals 1

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isReadOnly()Z
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    return v0
.end method

.method public loadMessageContent()V
    .locals 2

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->wasSoftKeyboardEnabled:Z

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ConversationBase$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationBase$1;-><init>(Lcom/android/mms/ui/ConversationBase;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 297
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationBase;->updateSendFailedNotification()V

    .line 298
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->drawBottomPanel()V

    .line 299
    return-void

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->startMsgListQuery()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-wide/16 v4, -0x1

    .line 1713
    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    .line 1714
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationBase;->mWaitingForSubActivity:Z

    .line 1715
    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase;->mTimedMsgIndicator:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 1716
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1717
    sget-object v2, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TIME:Ljava/lang/String;

    invoke-virtual {p3, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1718
    .local v0, time:J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 1719
    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ConversationBase;->setTimeToSend(J)V

    .line 1725
    .end local v0           #time:J
    :cond_0
    :goto_0
    return-void

    .line 1723
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageEditableActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mBackPressed:Z

    .line 189
    invoke-super {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->onBackPressed()V

    .line 190
    return-void
.end method

.method protected onContactsUpdated()V
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationBase;->updateTitle(Lcom/android/mms/data/ContactList;)V

    .line 174
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ConversationBase;->mContentResolver:Landroid/content/ContentResolver;

    .line 153
    new-instance v2, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationBase;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/ConversationBase;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/mms/ui/ConversationBase;->mBackgroundQueryHandler:Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;

    .line 154
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "thread_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 155
    .local v0, threadId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->finish()V

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ConversationBase;->initialize(J)V

    goto :goto_0
.end method

.method public onMessageSent()V
    .locals 1

    .prologue
    .line 1322
    invoke-super {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->onMessageSent()V

    .line 1325
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1326
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->startMsgListQuery()V

    .line 1328
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->onNewIntent(Landroid/content/Intent;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 198
    const/high16 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationBase;->startActivity(Landroid/content/Intent;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->finish()V

    .line 201
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 1340
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f1000e1

    if-ne v0, v1, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->enterEditMode()V

    .line 1342
    const/4 v0, 0x1

    .line 1344
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1332
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1333
    const v0, 0x7f1000e1

    invoke-static {p1, v0, v1}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 1334
    const v0, 0x7f1000e2

    invoke-static {p1, v0, v1}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 1335
    return v1
.end method

.method protected onResetMessageAnimationEnd()V
    .locals 1

    .prologue
    .line 1578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mInResetMessageAnimation:Z

    .line 1579
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mPendingChangeCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mPendingChangeCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationBase;->changeCursor(Landroid/database/Cursor;)V

    .line 1581
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mPendingChangeCursor:Landroid/database/Cursor;

    .line 1583
    :cond_0
    return-void
.end method

.method protected onResetMessageAnimationStart()V
    .locals 2

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setAllowTranscriptOnResize(Z)V

    .line 1574
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mInResetMessageAnimation:Z

    .line 1575
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->onStart()V

    .line 166
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationBase;->initLayoutStyle()V

    .line 167
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->loadMessageContent()V

    .line 168
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationBase;->updateTitle(Lcom/android/mms/data/ContactList;)V

    .line 169
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->onStop()V

    .line 179
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mBackPressed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mBackPressed:Z

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->exitEditMode()V

    .line 184
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 1279
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationBase;->checkPendingNotification()V

    .line 1280
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 1284
    if-eqz p1, :cond_0

    .line 1285
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationBase;->checkPendingNotification()V

    .line 1287
    :cond_0
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->onWindowFocusChanged(Z)V

    .line 1288
    return-void
.end method

.method public sendMessage()V
    .locals 1

    .prologue
    .line 1312
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationBase;->checkAndSendMessage(Z)V

    .line 1313
    return-void
.end method

.method protected setSendTimeForSpecifiedMessage(Lcom/android/mms/ui/MessageItem;)V
    .locals 4
    .parameter

    .prologue
    .line 1728
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isTimed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1741
    :goto_0
    return-void

    .line 1732
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mTimedMsgIndicator:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 1733
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationBase;->mOldTimeToSend:J

    .line 1735
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1736
    sget-object v1, Lcom/android/mms/ui/DateTimePickerActivity;->CONTENT_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1737
    sget-object v1, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TIME:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/mms/ui/ConversationBase;->mOldTimeToSend:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1738
    sget-object v1, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TITLE:Ljava/lang/String;

    const v2, 0x7f0a019f

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1740
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ConversationBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected abstract startMsgListQuery()V
.end method

.method undeliveredMessageDialog(J)V
    .locals 8
    .parameter "date"

    .prologue
    const/4 v7, 0x1

    .line 241
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040041

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 244
    .local v1, dialog:Landroid/widget/LinearLayout;
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-ltz v3, :cond_0

    .line 245
    const v3, 0x7f0a0022

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->getPreciseTimeStamp(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/ui/ConversationBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, body:Ljava/lang/String;
    :goto_0
    const v3, 0x7f1000be

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 255
    .local v2, undeliveredDialog:Landroid/widget/Toast;
    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 256
    invoke-virtual {v2, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 257
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 258
    return-void

    .line 249
    .end local v0           #body:Ljava/lang/String;
    .end local v2           #undeliveredDialog:Landroid/widget/Toast;
    :cond_0
    const v3, 0x7f0a0023

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #body:Ljava/lang/String;
    goto :goto_0
.end method

.method protected abstract updateMessageCount(I)V
.end method

.method protected abstract updateTitle(Lcom/android/mms/data/ContactList;)V
.end method

.method protected willDiscardDraft()Z
    .locals 1

    .prologue
    .line 1317
    const/4 v0, 0x0

    return v0
.end method
