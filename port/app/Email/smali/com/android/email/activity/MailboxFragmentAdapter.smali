.class Lcom/android/email/activity/MailboxFragmentAdapter;
.super Landroid/widget/CursorAdapter;
.source "MailboxFragmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MailboxFragmentAdapter$1;,
        Lcom/android/email/activity/MailboxFragmentAdapter$CombinedMailboxLoader;,
        Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;,
        Lcom/android/email/activity/MailboxFragmentAdapter$CursorWithExtras;,
        Lcom/android/email/activity/MailboxFragmentAdapter$EmptyCallback;,
        Lcom/android/email/activity/MailboxFragmentAdapter$Callback;
    }
.end annotation


# static fields
.field private static final CURMAILBOX_PROJECTION:[Ljava/lang/String;

.field private static final MATRIX_PROJECTION:[Ljava/lang/String;

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SUBMAILBOX_PROJECTION:[Ljava/lang/String;

.field private static sEnableUpdate:Z


# instance fields
.field private final mCallback:Lcom/android/email/activity/MailboxFragmentAdapter$Callback;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mResourceHelper:Lcom/android/email/ResourceHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 111
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_id AS orgMailboxId"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "unreadCount"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "messageCount"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "0 AS rowType"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MailboxFragmentAdapter;->PROJECTION:[Ljava/lang/String;

    .line 121
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_id AS orgMailboxId"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "unreadCount"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "messageCount"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "3 AS rowType"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MailboxFragmentAdapter;->SUBMAILBOX_PROJECTION:[Ljava/lang/String;

    .line 126
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_id AS orgMailboxId"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "unreadCount"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "messageCount"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "2 AS rowType"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MailboxFragmentAdapter;->CURMAILBOX_PROJECTION:[Ljava/lang/String;

    .line 132
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "orgMailboxId"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "unreadCount"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "messageCount"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rowType"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MailboxFragmentAdapter;->MATRIX_PROJECTION:[Ljava/lang/String;

    .line 167
    sput-boolean v3, Lcom/android/email/activity/MailboxFragmentAdapter;->sEnableUpdate:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/email/activity/MailboxFragmentAdapter$Callback;)V
    .locals 2
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 173
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 174
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/MailboxFragmentAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 175
    if-nez p2, :cond_0

    sget-object p2, Lcom/android/email/activity/MailboxFragmentAdapter$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MailboxFragmentAdapter$Callback;

    .end local p2
    :cond_0
    iput-object p2, p0, Lcom/android/email/activity/MailboxFragmentAdapter;->mCallback:Lcom/android/email/activity/MailboxFragmentAdapter$Callback;

    .line 176
    invoke-static {p1}, Lcom/android/email/ResourceHelper;->getInstance(Landroid/content/Context;)Lcom/android/email/ResourceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxFragmentAdapter;->mResourceHelper:Lcom/android/email/ResourceHelper;

    .line 177
    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/email/activity/MailboxFragmentAdapter;->SUBMAILBOX_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/email/activity/MailboxFragmentAdapter;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/android/email/activity/MailboxFragmentAdapter;->sEnableUpdate:Z

    return v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/email/activity/MailboxFragmentAdapter;->CURMAILBOX_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/email/activity/MailboxFragmentAdapter;->MATRIX_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroid/database/MatrixCursor;JLjava/lang/String;IIIIIJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 68
    invoke-static/range {p0 .. p10}, Lcom/android/email/activity/MailboxFragmentAdapter;->addMailboxRow(Landroid/database/MatrixCursor;JLjava/lang/String;IIIIIJ)V

    return-void
.end method

.method static synthetic access$700(Landroid/content/Context;Landroid/database/MatrixCursor;JIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 68
    invoke-static/range {p0 .. p5}, Lcom/android/email/activity/MailboxFragmentAdapter;->addCombinedMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIZ)V

    return-void
.end method

.method private static addCombinedMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIZ)V
    .locals 11
    .parameter "context"
    .parameter "cursor"
    .parameter "id"
    .parameter "mailboxType"
    .parameter "showAlways"

    .prologue
    .line 496
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 497
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 499
    :cond_0
    invoke-static {p0, p2, p3}, Lcom/android/email/FolderProperties;->getMessageCountForCombinedMailbox(Landroid/content/Context;J)I

    move-result v5

    .line 500
    .local v5, count:I
    if-nez p5, :cond_1

    if-lez v5, :cond_2

    .line 501
    :cond_1
    const-string v3, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/high16 v9, 0x1000

    move-object v0, p1

    move-wide v1, p2

    move v4, p4

    move v6, v5

    invoke-static/range {v0 .. v10}, Lcom/android/email/activity/MailboxFragmentAdapter;->addMailboxRow(Landroid/database/MatrixCursor;JLjava/lang/String;IIIIIJ)V

    .line 505
    :cond_2
    return-void
.end method

.method private static addMailboxRow(Landroid/database/MatrixCursor;JLjava/lang/String;IIIIIJ)V
    .locals 5
    .parameter "cursor"
    .parameter "mailboxId"
    .parameter "displayName"
    .parameter "mailboxType"
    .parameter "unreadCount"
    .parameter "messageCount"
    .parameter "rowType"
    .parameter "flags"
    .parameter "accountId"

    .prologue
    .line 478
    move-wide v0, p1

    .line 479
    .local v0, listId:J
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gez v3, :cond_0

    .line 480
    const-wide v3, 0x7fffffffffffffffL

    add-long v0, v3, p1

    .line 482
    :cond_0
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 483
    .local v2, row:Landroid/database/MatrixCursor$RowBuilder;
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 484
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 485
    invoke-virtual {v2, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 486
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 487
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 488
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 489
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 490
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 491
    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 492
    return-void
.end method

.method private bindListHeader(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 347
    const v1, 0x7f0e0046

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 348
    .local v0, nameView:Landroid/widget/TextView;
    invoke-static {p2, p3}, Lcom/android/email/activity/MailboxFragmentAdapter;->getDisplayName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    return-void
.end method

.method private bindListItem(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 22
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 352
    invoke-static/range {p3 .. p3}, Lcom/android/email/activity/MailboxFragmentAdapter;->isAccountRow(Landroid/database/Cursor;)Z

    move-result v14

    .line 353
    .local v14, isAccount:Z
    invoke-static/range {p3 .. p3}, Lcom/android/email/activity/MailboxFragmentAdapter;->getType(Landroid/database/Cursor;)I

    move-result v19

    .line 354
    .local v19, type:I
    invoke-static/range {p3 .. p3}, Lcom/android/email/activity/MailboxFragmentAdapter;->getId(Landroid/database/Cursor;)J

    move-result-wide v12

    .line 355
    .local v12, id:J
    invoke-static/range {p3 .. p3}, Lcom/android/email/activity/MailboxFragmentAdapter;->getAccountId(Landroid/database/Cursor;)J

    move-result-wide v3

    .line 356
    .local v3, accountId:J
    invoke-static/range {p3 .. p3}, Lcom/android/email/activity/MailboxFragmentAdapter;->getFlags(Landroid/database/Cursor;)I

    move-result v8

    .line 357
    .local v8, flags:I
    invoke-static/range {p3 .. p3}, Lcom/android/email/activity/MailboxFragmentAdapter;->getRowType(Landroid/database/Cursor;)I

    move-result v18

    .line 358
    .local v18, rowType:I
    and-int/lit8 v20, v8, 0x1

    if-eqz v20, :cond_0

    and-int/lit8 v20, v8, 0x2

    if-eqz v20, :cond_0

    const/4 v11, 0x1

    .local v11, hasVisibleChildren:Z
    :goto_0
    move-object/from16 v15, p1

    .line 361
    check-cast v15, Lcom/android/email/activity/MailboxListItem;

    .line 362
    .local v15, listItem:Lcom/android/email/activity/MailboxListItem;
    invoke-static/range {p3 .. p3}, Lcom/android/email/activity/MailboxFragmentAdapter;->isAccountRow(Landroid/database/Cursor;)Z

    move-result v20

    if-eqz v20, :cond_1

    const-wide/16 v20, -0x1

    :goto_1
    move-wide/from16 v0, v20

    iput-wide v0, v15, Lcom/android/email/activity/MailboxListItem;->mMailboxId:J

    .line 363
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v15, Lcom/android/email/activity/MailboxListItem;->mMailboxType:Ljava/lang/Integer;

    .line 364
    iput-wide v3, v15, Lcom/android/email/activity/MailboxListItem;->mAccountId:J

    .line 365
    const-wide/16 v20, 0x0

    cmp-long v20, v12, v20

    if-ltz v20, :cond_2

    sget-object v20, Lcom/android/emailcommon/provider/Mailbox;->INVALID_DROP_TARGETS:[Ljava/lang/Integer;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/emailcommon/utility/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    and-int/lit8 v20, v8, 0x10

    if-eqz v20, :cond_2

    const/16 v20, 0x1

    :goto_2
    move/from16 v0, v20

    iput-boolean v0, v15, Lcom/android/email/activity/MailboxListItem;->mIsValidDropTarget:Z

    .line 368
    iput-boolean v11, v15, Lcom/android/email/activity/MailboxListItem;->mIsNavigable:Z

    .line 370
    move-object/from16 v0, p0

    iput-object v0, v15, Lcom/android/email/activity/MailboxListItem;->mAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MailboxFragmentAdapter;->mCallback:Lcom/android/email/activity/MailboxFragmentAdapter$Callback;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Lcom/android/email/activity/MailboxFragmentAdapter$Callback;->onBind(Lcom/android/email/activity/MailboxListItem;)V

    .line 376
    const v20, 0x7f0e0074

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 377
    .local v17, nameView:Landroid/widget/TextView;
    invoke-static/range {p2 .. p3}, Lcom/android/email/activity/MailboxFragmentAdapter;->getDisplayName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    invoke-static/range {p3 .. p3}, Lcom/android/email/activity/MailboxFragmentAdapter;->isAccountRow(Landroid/database/Cursor;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 381
    invoke-static/range {p3 .. p3}, Lcom/android/email/activity/MailboxFragmentAdapter;->getUnreadCount(Landroid/database/Cursor;)I

    move-result v6

    .line 386
    .local v6, count:I
    :goto_3
    const v20, 0x7f0e0072

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 389
    .local v7, countView:Landroid/widget/TextView;
    const v20, 0x7f0e0073

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 390
    .local v9, folderIcon:Landroid/widget/ImageView;
    invoke-static/range {p2 .. p2}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1, v12, v13, v8}, Lcom/android/email/FolderProperties;->getIcon(IJI)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 393
    const v20, 0x7f0e0075

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 395
    .local v16, mailboxExpandedIcon:Landroid/widget/ImageView;
    packed-switch v18, :pswitch_data_0

    .line 414
    if-eqz v11, :cond_5

    .line 415
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 416
    const v20, 0x7f02002d

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 422
    :goto_4
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 427
    :goto_5
    if-lez v6, :cond_6

    .line 428
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    :goto_6
    const v20, 0x7f0e0048

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 435
    .local v5, chipView:Landroid/view/View;
    if-eqz v14, :cond_7

    .line 436
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MailboxFragmentAdapter;->mResourceHelper:Lcom/android/email/ResourceHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Lcom/android/email/ResourceHelper;->getAccountColor(J)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 441
    :goto_7
    return-void

    .line 358
    .end local v5           #chipView:Landroid/view/View;
    .end local v6           #count:I
    .end local v7           #countView:Landroid/widget/TextView;
    .end local v9           #folderIcon:Landroid/widget/ImageView;
    .end local v11           #hasVisibleChildren:Z
    .end local v15           #listItem:Lcom/android/email/activity/MailboxListItem;
    .end local v16           #mailboxExpandedIcon:Landroid/widget/ImageView;
    .end local v17           #nameView:Landroid/widget/TextView;
    :cond_0
    const/4 v11, 0x0

    goto/16 :goto_0

    .restart local v11       #hasVisibleChildren:Z
    .restart local v15       #listItem:Lcom/android/email/activity/MailboxListItem;
    :cond_1
    move-wide/from16 v20, v12

    .line 362
    goto/16 :goto_1

    .line 365
    :cond_2
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 383
    .restart local v17       #nameView:Landroid/widget/TextView;
    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v10

    .line 384
    .local v10, fp:Lcom/android/email/FolderProperties;
    invoke-static/range {p3 .. p3}, Lcom/android/email/activity/MailboxFragmentAdapter;->getUnreadCount(Landroid/database/Cursor;)I

    move-result v20

    invoke-static/range {p3 .. p3}, Lcom/android/email/activity/MailboxFragmentAdapter;->getMessageCount(Landroid/database/Cursor;)I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Lcom/android/email/FolderProperties;->getMessageCount(III)I

    move-result v6

    .restart local v6       #count:I
    goto/16 :goto_3

    .line 397
    .end local v10           #fp:Lcom/android/email/FolderProperties;
    .restart local v7       #countView:Landroid/widget/TextView;
    .restart local v9       #folderIcon:Landroid/widget/ImageView;
    .restart local v16       #mailboxExpandedIcon:Landroid/widget/ImageView;
    :pswitch_0
    if-eqz v11, :cond_4

    .line 398
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 399
    const v20, 0x7f02002d

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 405
    :goto_8
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 402
    :cond_4
    const/16 v20, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 403
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 408
    :pswitch_1
    const/16 v20, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 409
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 410
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 419
    :cond_5
    const/16 v20, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 420
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 431
    :cond_6
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 439
    .restart local v5       #chipView:Landroid/view/View;
    :cond_7
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static createCombinedViewLoader(Landroid/content/Context;)Landroid/content/Loader;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 467
    const-string v0, "Email"

    const-string v1, "MailboxFragmentAdapter#createCombinedViewLoader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_0
    new-instance v0, Lcom/android/email/activity/MailboxFragmentAdapter$CombinedMailboxLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MailboxFragmentAdapter$CombinedMailboxLoader;-><init>(Landroid/content/Context;Lcom/android/email/activity/MailboxFragmentAdapter$1;)V

    return-object v0
.end method

.method static createMailboxesLoader(Landroid/content/Context;JJ)Landroid/content/Loader;
    .locals 6
    .parameter "context"
    .parameter "accountId"
    .parameter "parentMailboxId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJ)",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 453
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MailboxFragmentAdapter#CursorWithExtras accountId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parentMailboxId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    const-wide/high16 v0, 0x1000

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 457
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 459
    :cond_1
    new-instance v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;-><init>(Landroid/content/Context;JJ)V

    return-object v0
.end method

.method static enableUpdates(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 284
    sput-boolean p0, Lcom/android/email/activity/MailboxFragmentAdapter;->sEnableUpdate:Z

    .line 285
    return-void
.end method

.method static getAccountId(Landroid/database/Cursor;)J
    .locals 2
    .parameter "cursor"

    .prologue
    .line 318
    const-string v0, "accountKey"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getDisplayName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 288
    const-string v2, "displayName"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, name:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/email/activity/MailboxFragmentAdapter;->isHeaderRow(Landroid/database/Cursor;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/android/email/activity/MailboxFragmentAdapter;->isAccountRow(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    .end local v1           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 296
    .restart local v1       #name:Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v0

    .line 297
    .local v0, fp:Lcom/android/email/FolderProperties;
    invoke-static {p1}, Lcom/android/email/activity/MailboxFragmentAdapter;->getType(Landroid/database/Cursor;)I

    move-result v2

    invoke-static {p1}, Lcom/android/email/activity/MailboxFragmentAdapter;->getId(Landroid/database/Cursor;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/email/FolderProperties;->getDisplayName(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getFlags(Landroid/database/Cursor;)I
    .locals 1
    .parameter "cursor"

    .prologue
    .line 326
    const-string v0, "flags"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method static getId(Landroid/database/Cursor;)J
    .locals 2
    .parameter "cursor"

    .prologue
    .line 302
    const-string v0, "orgMailboxId"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static getMessageCount(Landroid/database/Cursor;)I
    .locals 1
    .parameter "cursor"

    .prologue
    .line 310
    const-string v0, "messageCount"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private static getRowType(Landroid/database/Cursor;)I
    .locals 1
    .parameter "cursor"

    .prologue
    .line 322
    const-string v0, "rowType"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method static getType(Landroid/database/Cursor;)I
    .locals 1
    .parameter "cursor"

    .prologue
    .line 306
    const-string v0, "type"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method static getUnreadCount(Landroid/database/Cursor;)I
    .locals 1
    .parameter "cursor"

    .prologue
    .line 314
    const-string v0, "unreadCount"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private static isAccountRow(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "cursor"

    .prologue
    const/4 v0, 0x1

    .line 243
    invoke-static {p0}, Lcom/android/email/activity/MailboxFragmentAdapter;->getRowType(Landroid/database/Cursor;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHeader(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxFragmentAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 220
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v2

    .line 223
    :cond_1
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 224
    const-string v3, "rowType"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 225
    .local v1, rowType:I
    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static isHeaderRow(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "cursor"

    .prologue
    .line 248
    invoke-static {p0}, Lcom/android/email/activity/MailboxFragmentAdapter;->getRowType(Landroid/database/Cursor;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMailboxRow(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 256
    invoke-static {p0}, Lcom/android/email/activity/MailboxFragmentAdapter;->isAccountRow(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/email/activity/MailboxFragmentAdapter;->isHeaderRow(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 203
    instance-of v0, p1, Lcom/android/email/activity/MailboxListItem;

    if-eqz v0, :cond_0

    .line 204
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MailboxFragmentAdapter;->bindListItem(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MailboxFragmentAdapter;->bindListHeader(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method getAccountId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 274
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxFragmentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 275
    .local v0, c:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/email/activity/MailboxFragmentAdapter;->getAccountId(Landroid/database/Cursor;)J

    move-result-wide v1

    return-wide v1
.end method

.method getId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxFragmentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 265
    .local v0, c:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/email/activity/MailboxFragmentAdapter;->getId(Landroid/database/Cursor;)J

    move-result-wide v1

    return-wide v1
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxFragmentAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x2

    return v0
.end method

.method isAccountRow(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxFragmentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/email/activity/MailboxFragmentAdapter;->isAccountRow(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxFragmentAdapter;->isHeader(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMailboxRow(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxFragmentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/email/activity/MailboxFragmentAdapter;->isMailboxRow(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 212
    const-string v0, "rowType"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/email/activity/MailboxFragmentAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04002d

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MailboxFragmentAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04002e

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
