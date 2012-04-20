.class public Lcom/android/mms/ui/MessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "MessageListAdapter.java"

# interfaces
.implements Lcom/android/mms/util/EditableListView$EditableListIdMapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;,
        Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;
    }
.end annotation


# static fields
.field static final GROUP_MSG_PROJECTION:[Ljava/lang/String;

.field static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCheckedIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

.field private mContext:Landroid/content/Context;

.field private mConversationThreadId:J

.field private mDeliverReportMode:I

.field private mGroupByTime:Z

.field private mHighlight:Ljava/util/regex/Pattern;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mIsCheckMode:Z

.field private mIsGroup:Z

.field private mIsReadOnly:Z

.field private mItemStyle:Ljava/lang/String;

.field private final mMessageItemCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/ui/MessageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListItemHandler:Landroid/os/Handler;

.field private mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "thread_id"

    aput-object v1, v0, v5

    const-string v1, "address"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "timed"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "err_type"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "ct_l"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "m_size"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "exp"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "timed"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "date_ms_part"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    .line 97
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "thread_id"

    aput-object v1, v0, v5

    const-string v1, "address"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "timed"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "err_type"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "ct_l"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "m_size"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "exp"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "timed"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "date_ms_part"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/MessageListAdapter;->GROUP_MSG_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;)V
    .locals 10
    .parameter "context"
    .parameter "c"
    .parameter "listView"
    .parameter "useDefaultColumnsMap"
    .parameter "highlight"

    .prologue
    const/4 v6, 0x0

    .line 190
    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v7, v6

    invoke-direct/range {v0 .. v9}, Lcom/android/mms/ui/MessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;ZZJ)V

    .line 191
    sget-object v0, Lcom/android/mms/ui/MessageListItem$Style;->list:Lcom/android/mms/ui/MessageListItem$Style;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem$Style;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6, v6}, Lcom/android/mms/ui/MessageListAdapter;->initLayoutStyle(Ljava/lang/String;ZI)V

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;ZZJ)V
    .locals 2
    .parameter "context"
    .parameter "c"
    .parameter "listView"
    .parameter "useDefaultColumnsMap"
    .parameter "highlight"
    .parameter "isGroup"
    .parameter "isReadOnly"
    .parameter "threadId"

    .prologue
    const/4 v0, 0x0

    .line 198
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 184
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsCheckMode:Z

    .line 185
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedIds:Ljava/util/HashSet;

    .line 199
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    .line 200
    iput-object p5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    .line 202
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 205
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Landroid/util/LruCache;

    .line 207
    if-eqz p4, :cond_0

    .line 208
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 213
    :goto_0
    iput-boolean p6, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsGroup:Z

    .line 214
    iput-boolean p7, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsReadOnly:Z

    .line 215
    iput-wide p8, p0, Lcom/android/mms/ui/MessageListAdapter;->mConversationThreadId:J

    .line 217
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$1;-><init>(Lcom/android/mms/ui/MessageListAdapter;)V

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 227
    return-void

    .line 210
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    goto :goto_0
.end method

.method private getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 249
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, type:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 251
    .local v0, msgId:J
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    return-object v3
.end method

.method private static getKey(Ljava/lang/String;J)J
    .locals 1
    .parameter "type"
    .parameter "id"

    .prologue
    .line 375
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    neg-long p1, p1

    .line 378
    .end local p1
    :cond_0
    return-wide p1
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 368
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    :cond_0
    const/4 v0, 0x0

    .line 371
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, checked:Z
    iget-boolean v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsCheckMode:Z

    if-eqz v6, :cond_0

    .line 308
    iget-object v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v6, v6, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 309
    .local v1, id:J
    iget-object v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v6, v6, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 310
    .local v5, type:Ljava/lang/String;
    invoke-static {v5, v1, v2}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v3

    .line 311
    .local v3, key:J
    iget-object v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedIds:Ljava/util/HashSet;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 313
    .end local v1           #id:J
    .end local v3           #key:J
    .end local v5           #type:Ljava/lang/String;
    :cond_0
    check-cast p1, Lcom/android/mms/ui/MessageListItem;

    .end local p1
    invoke-direct {p0, p3}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsCheckMode:Z

    invoke-virtual {p1, v6, v7, v0}, Lcom/android/mms/ui/MessageListItem;->rebind(Lcom/android/mms/ui/MessageItem;ZZ)V

    .line 314
    return-void
.end method

.method public enterCheckMode()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsCheckMode:Z

    .line 384
    return-void
.end method

.method public exitCheckMode()V
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsCheckMode:Z

    .line 388
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedIds:Ljava/util/HashSet;

    .line 389
    return-void
.end method

.method public getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 13
    .parameter "type"
    .parameter "msgId"
    .parameter "c"

    .prologue
    .line 236
    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Landroid/util/LruCache;

    invoke-static/range {p1 .. p3}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/mms/ui/MessageItem;

    .line 237
    .local v12, item:Lcom/android/mms/ui/MessageItem;
    if-nez v12, :cond_0

    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    :try_start_0
    new-instance v1, Lcom/android/mms/ui/MessageItem;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget-object v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    iget-boolean v7, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsGroup:Z

    iget-boolean v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsReadOnly:Z

    iget-wide v9, p0, Lcom/android/mms/ui/MessageListAdapter;->mConversationThreadId:J

    move-object v3, p1

    move-object/from16 v4, p4

    invoke-direct/range {v1 .. v10}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZJ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v12           #item:Lcom/android/mms/ui/MessageItem;
    .local v1, item:Lcom/android/mms/ui/MessageItem;
    :try_start_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    :goto_0
    return-object v1

    .line 241
    .end local v1           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v12       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v11

    move-object v1, v12

    .line 242
    .end local v12           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v1       #item:Lcom/android/mms/ui/MessageItem;
    .local v11, e:Lcom/google/android/mms/MmsException;
    :goto_1
    const-string v2, "MessageListAdapter"

    const-string v3, "getCachedMessageItem: "

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 241
    .end local v11           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v11

    goto :goto_1

    .end local v1           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v12       #item:Lcom/android/mms/ui/MessageItem;
    :cond_0
    move-object v1, v12

    .end local v12           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v1       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_0
.end method

.method public getCheckedItems(Ljava/util/HashSet;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/MessageItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, checkedPositions:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/MessageItem;>;"
    if-eqz p1, :cond_0

    .line 257
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 258
    .local v3, position:I
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 259
    .local v0, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #position:I
    :cond_0
    return-object v2
.end method

.method public getItemViewType(I)I
    .locals 7
    .parameter "position"

    .prologue
    .line 276
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 277
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    .line 278
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getLayoutStyle()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 279
    const/4 v1, 0x0

    .line 280
    .local v1, prevMsgItem:Lcom/android/mms/ui/MessageItem;
    iget-boolean v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mGroupByTime:Z

    if-eqz v3, :cond_1

    .line 281
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 282
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    .line 284
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 286
    :cond_1
    iget-boolean v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mGroupByTime:Z

    if-nez v3, :cond_4

    const/4 v2, 0x1

    .line 287
    .local v2, showTimeStamp:Z
    :goto_0
    if-eqz v1, :cond_5

    .line 288
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x36ee80

    cmp-long v3, v3, v5

    if-ltz v3, :cond_2

    .line 289
    const/4 v2, 0x1

    .line 294
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mItemStyle:Ljava/lang/String;

    iget v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mDeliverReportMode:I

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/mms/ui/MessageItem;->initLayoutStyle(Ljava/lang/String;ZI)V

    .line 296
    .end local v1           #prevMsgItem:Lcom/android/mms/ui/MessageItem;
    .end local v2           #showTimeStamp:Z
    :cond_3
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getLayoutStyle()I

    move-result v3

    return v3

    .line 286
    .restart local v1       #prevMsgItem:Lcom/android/mms/ui/MessageItem;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 292
    .restart local v2       #showTimeStamp:Z
    :cond_5
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x6

    return v0
.end method

.method public initLayoutStyle(Ljava/lang/String;ZI)V
    .locals 0
    .parameter "itemStyle"
    .parameter "groupByTime"
    .parameter "deliverReportMode"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mItemStyle:Ljava/lang/String;

    .line 231
    iput-boolean p2, p0, Lcom/android/mms/ui/MessageListAdapter;->mGroupByTime:Z

    .line 232
    iput p3, p0, Lcom/android/mms/ui/MessageListAdapter;->mDeliverReportMode:I

    .line 233
    return-void
.end method

.method public mapPositionToId(I)J
    .locals 6
    .parameter "position"

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 268
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v4, v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, type:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v4, v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 271
    .local v1, msgId:J
    invoke-static {v3, v1, v2}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v4

    return-wide v4
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 318
    invoke-direct {p0, p2}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    .line 320
    .local v1, msgItem:Lcom/android/mms/ui/MessageItem;
    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isListLayoutStyle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04002c

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    .line 325
    .local v0, mli:Lcom/android/mms/ui/MessageListItem;
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListItem;->bind(Lcom/android/mms/ui/MessageItem;)V

    .line 326
    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 327
    return-object v0

    .line 323
    .end local v0           #mli:Lcom/android/mms/ui/MessageListItem;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04002b

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    .restart local v0       #mli:Lcom/android/mms/ui/MessageListItem;
    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 345
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 350
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 352
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;->onDataSetChanged(Lcom/android/mms/ui/MessageListAdapter;)V

    .line 355
    :cond_0
    return-void
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;->onContentChanged(Lcom/android/mms/ui/MessageListAdapter;)V

    .line 364
    :cond_0
    return-void
.end method

.method public setCheckedItem(Ljava/util/HashSet;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 392
    .local p1, ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    if-nez p1, :cond_0

    .line 393
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedIds:Ljava/util/HashSet;

    .line 397
    :goto_0
    return-void

    .line 395
    :cond_0
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedIds:Ljava/util/HashSet;

    goto :goto_0
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    .line 341
    return-void
.end method

.method public setOnDataSetChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    .line 337
    return-void
.end method
