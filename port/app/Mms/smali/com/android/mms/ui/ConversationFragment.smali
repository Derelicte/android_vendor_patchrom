.class public Lcom/android/mms/ui/ConversationFragment;
.super Landroid/app/Fragment;
.source "ConversationFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/android/mms/util/DraftCache$OnDraftChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationFragment$ModeCallback;,
        Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;,
        Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;
    }
.end annotation


# static fields
.field private static final MMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

.field private static final SMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

.field private static mDeleteProgressDialog:Landroid/app/ProgressDialog;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

.field private final mDeleteObsoleteThreadsRunnable:Ljava/lang/Runnable;

.field private mEmptyView:Landroid/widget/TextView;

.field private mFinishedTimedQuery:I

.field private mHandler:Landroid/os/Handler;

.field private mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

.field private mListView:Lcom/android/mms/util/EditableListView;

.field private mNeedToMarkAsSeen:Z

.field private final mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mQueryHandler:Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;

.field private mRootView:Landroid/view/View;

.field private final mThreadListKeyListener:Landroid/view/View$OnKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 266
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/ui/ConversationFragment;->SMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    .line 269
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/ui/ConversationFragment;->MMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ConversationFragment;->mFinishedTimedQuery:I

    .line 128
    new-instance v0, Lcom/android/mms/ui/ConversationFragment$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationFragment$1;-><init>(Lcom/android/mms/ui/ConversationFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationFragment;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    .line 289
    new-instance v0, Lcom/android/mms/ui/ConversationFragment$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationFragment$4;-><init>(Lcom/android/mms/ui/ConversationFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 420
    new-instance v0, Lcom/android/mms/ui/ConversationFragment$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationFragment$6;-><init>(Lcom/android/mms/ui/ConversationFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationFragment;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    .line 476
    new-instance v0, Lcom/android/mms/ui/ConversationFragment$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationFragment$7;-><init>(Lcom/android/mms/ui/ConversationFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationFragment;->mDeleteObsoleteThreadsRunnable:Ljava/lang/Runnable;

    .line 578
    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ConversationFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationFragment;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ConversationFragment;)Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;

    return-object v0
.end method

.method static synthetic access$1100()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/mms/ui/ConversationFragment;->mDeleteProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    sput-object p0, Lcom/android/mms/ui/ConversationFragment;->mDeleteProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ConversationFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment;->mDeleteObsoleteThreadsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/ConversationFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment;->mEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/ConversationFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationFragment;->mNeedToMarkAsSeen:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/mms/ui/ConversationFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationFragment;->mNeedToMarkAsSeen:Z

    return p1
.end method

.method static synthetic access$1804(Lcom/android/mms/ui/ConversationFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/mms/ui/ConversationFragment;->mFinishedTimedQuery:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationFragment;->mFinishedTimedQuery:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ConversationFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ConversationFragment;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ConversationFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationFragment;->markCheckedMessageLimit()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ConversationFragment;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationFragment;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ConversationFragment;)Lcom/android/mms/ui/ConversationListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ConversationFragment;)Lcom/android/mms/util/EditableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment;->mListView:Lcom/android/mms/util/EditableListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ConversationFragment;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationFragment;->openThread(J)V

    return-void
.end method

.method public static confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V
    .locals 3
    .parameter "threadId"
    .parameter "handler"

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, threadIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v1, -0x1

    cmp-long v1, p0, v1

    if-eqz v1, :cond_0

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #threadIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .restart local v0       #threadIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_0
    invoke-static {v0, p2}, Lcom/android/mms/ui/ConversationFragment;->confirmDeleteThreads(Ljava/util/Collection;Landroid/content/AsyncQueryHandler;)V

    .line 359
    return-void
.end method

.method public static confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;Ljava/util/Collection;ZLandroid/content/Context;)V
    .locals 12
    .parameter "listener"
    .parameter
    .parameter "hasLockedMessages"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;Z",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, threadIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 386
    const v5, 0x7f040009

    invoke-static {p3, v5, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 387
    .local v3, contents:Landroid/view/View;
    const v5, 0x7f100026

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 389
    .local v4, msg:Landroid/widget/TextView;
    if-nez p1, :cond_0

    .line 390
    const v5, 0x7f0a00a0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 398
    :goto_0
    const v5, 0x7f100027

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 399
    .local v1, checkbox:Landroid/widget/CheckBox;
    if-nez p2, :cond_1

    .line 400
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 410
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 411
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0a009d

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1010355

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a00a5

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a0078

    invoke-virtual {v5, v6, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 418
    return-void

    .line 393
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #checkbox:Landroid/widget/CheckBox;
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    .line 394
    .local v2, cnt:I
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f0d

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 402
    .end local v2           #cnt:I
    .restart local v1       #checkbox:Landroid/widget/CheckBox;
    :cond_1
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;->setDeleteLockedMessage(Z)V

    .line 403
    new-instance v5, Lcom/android/mms/ui/ConversationFragment$5;

    invoke-direct {v5, p0, v1}, Lcom/android/mms/ui/ConversationFragment$5;-><init>(Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public static confirmDeleteThreads(Ljava/util/Collection;Landroid/content/AsyncQueryHandler;)V
    .locals 1
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/AsyncQueryHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, threadIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const/16 v0, 0x70a

    invoke-static {p1, p0, v0}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;Ljava/util/Collection;I)V

    .line 371
    return-void
.end method

.method private varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .parameter "format"
    .parameter "args"

    .prologue
    .line 682
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 683
    .local v0, s:Ljava/lang/String;
    const-string v1, "ConversationFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return-void
.end method

.method private markCheckedMessageLimit()V
    .locals 3

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 192
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "checked_message_limits"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 193
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 194
    return-void
.end method

.method private openThread(J)V
    .locals 1
    .parameter "threadId"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationFragment;->startActivity(Landroid/content/Intent;)V

    .line 327
    return-void
.end method

.method private startAsyncQuery()V
    .locals 3

    .prologue
    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment;->mEmptyView:Landroid/widget/TextView;

    const v2, 0x7f0a00a8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 259
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;

    const/16 v2, 0x6a5

    invoke-static {v1, v2}, Lcom/android/mms/data/Conversation;->startQueryForAll(Landroid/content/AsyncQueryHandler;I)V

    .line 260
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationFragment;->startQueryTimedThreads()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private startQueryTimedThreads()V
    .locals 9

    .prologue
    const/16 v8, 0x6a7

    const/16 v1, 0x6a6

    const/4 v2, 0x0

    .line 274
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->cancelOperation(I)V

    .line 275
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;

    invoke-virtual {v0, v8}, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->cancelOperation(I)V

    .line 276
    invoke-static {}, Lcom/android/mms/data/Conversation$TimedThreads;->clear()V

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ConversationFragment;->mFinishedTimedQuery:I

    .line 284
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/ui/ConversationFragment;->SMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "timed>0"

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/ui/ConversationFragment;->MMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "timed>0"

    move v1, v8

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method


# virtual methods
.method public enterEditMode()V
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment;->mListView:Lcom/android/mms/util/EditableListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment;->mListView:Lcom/android/mms/util/EditableListView;

    invoke-virtual {v0}, Lcom/android/mms/util/EditableListView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment;->mListView:Lcom/android/mms/util/EditableListView;

    invoke-virtual {v0}, Lcom/android/mms/util/EditableListView;->enterEditMode()V

    .line 690
    :cond_0
    return-void
.end method

.method public exitEditMode()V
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment;->mListView:Lcom/android/mms/util/EditableListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment;->mListView:Lcom/android/mms/util/EditableListView;

    invoke-virtual {v0}, Lcom/android/mms/util/EditableListView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment;->mListView:Lcom/android/mms/util/EditableListView;

    invoke-virtual {v0}, Lcom/android/mms/util/EditableListView;->exitEditMode()V

    .line 696
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;

    .line 93
    const v1, 0x7f040007

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationFragment;->mRootView:Landroid/view/View;

    .line 95
    new-instance v1, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;-><init>(Lcom/android/mms/ui/ConversationFragment;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;

    .line 97
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f10001e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/util/EditableListView;

    iput-object v1, p0, Lcom/android/mms/ui/ConversationFragment;->mListView:Lcom/android/mms/util/EditableListView;

    .line 98
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment;->mListView:Lcom/android/mms/util/EditableListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationFragment;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/util/EditableListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 99
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment;->mListView:Lcom/android/mms/util/EditableListView;

    new-instance v2, Lcom/android/mms/ui/ConversationFragment$ModeCallback;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/ConversationFragment$ModeCallback;-><init>(Lcom/android/mms/ui/ConversationFragment;Lcom/android/mms/ui/ConversationFragment$1;)V

    invoke-virtual {v1, v2}, Lcom/android/mms/util/EditableListView;->setEditModeListener(Lcom/android/mms/util/EditableListView$EditModeListener;)V

    .line 102
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f10001f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/ConversationFragment;->mEmptyView:Landroid/widget/TextView;

    .line 103
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment;->mListView:Lcom/android/mms/util/EditableListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/android/mms/util/EditableListView;->setEmptyView(Landroid/view/View;)V

    .line 105
    new-instance v1, Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v3}, Lcom/android/mms/ui/ConversationListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    .line 106
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationFragment;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    .line 107
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment;->mListView:Lcom/android/mms/util/EditableListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/mms/util/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment;->mListView:Lcom/android/mms/util/EditableListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/mms/util/EditableListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 109
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment;->mListView:Lcom/android/mms/util/EditableListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/util/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment;->mListView:Lcom/android/mms/util/EditableListView;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/EditableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 112
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationFragment;->mHandler:Landroid/os/Handler;

    .line 113
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 114
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "checked_message_limits"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 116
    .local v0, checkedMessageLimits:Z
    if-eqz v0, :cond_0

    .line 119
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment;->mRootView:Landroid/view/View;

    return-object v1

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationFragment;->runOneTimeStorageLimitCheckForLegacyMessages()V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 125
    invoke-static {}, Lcom/android/mms/data/Contact;->stopCaching()V

    .line 126
    return-void
.end method

.method public onDraftChanged(JZ)V
    .locals 2
    .parameter "threadId"
    .parameter "hasDraft"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;

    new-instance v1, Lcom/android/mms/ui/ConversationFragment$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationFragment$3;-><init>(Lcom/android/mms/ui/ConversationFragment;JZ)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;->post(Ljava/lang/Runnable;)Z

    .line 254
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 240
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 241
    invoke-static {}, Lcom/android/mms/data/Contact;->resumeCaching()V

    .line 242
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 323
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 313
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 314
    invoke-static {}, Lcom/android/mms/data/Contact;->pauseCaching()V

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-static {}, Lcom/android/mms/data/Contact;->resumeCaching()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 200
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xef

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 203
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->addOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationFragment;->mNeedToMarkAsSeen:Z

    .line 220
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationFragment;->startAsyncQuery()V

    .line 225
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 229
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 231
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->removeOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 233
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment;->mListView:Lcom/android/mms/util/EditableListView;

    invoke-virtual {v0}, Lcom/android/mms/util/EditableListView;->exitEditMode()V

    .line 234
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 235
    invoke-static {}, Lcom/android/mms/data/Contact;->removeAllListener()V

    .line 236
    return-void
.end method

.method public declared-synchronized runOneTimeStorageLimitCheckForLegacyMessages()V
    .locals 2

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/util/Recycler;->isAutoDeleteEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationFragment;->markCheckedMessageLimit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :goto_0
    monitor-exit p0

    return-void

    .line 149
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ConversationFragment$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationFragment$2;-><init>(Lcom/android/mms/ui/ConversationFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
