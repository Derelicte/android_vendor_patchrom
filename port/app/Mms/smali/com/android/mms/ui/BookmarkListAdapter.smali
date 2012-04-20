.class public Lcom/android/mms/ui/BookmarkListAdapter;
.super Landroid/widget/CursorAdapter;
.source "BookmarkListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/BookmarkListAdapter$BackgroundQueryHandler;
    }
.end annotation


# static fields
.field static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mBackgroundQueryHandler:Lcom/android/mms/ui/BookmarkListAdapter$BackgroundQueryHandler;

.field private mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mMessageItemCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/ui/MessageItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    sput-object v0, Lcom/android/mms/ui/BookmarkListAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 51
    iput-object p1, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/android/mms/ui/BookmarkListAdapter$BackgroundQueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/BookmarkListAdapter$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/BookmarkListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mBackgroundQueryHandler:Lcom/android/mms/ui/BookmarkListAdapter$BackgroundQueryHandler;

    .line 54
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 56
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 59
    new-instance v0, Lcom/android/mms/ui/BookmarkListAdapter$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/ui/BookmarkListAdapter$1;-><init>(Lcom/android/mms/ui/BookmarkListAdapter;IFZ)V

    iput-object v0, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    .line 65
    return-void
.end method

.method public static getKey(Ljava/lang/String;J)J
    .locals 1
    .parameter "type"
    .parameter "id"

    .prologue
    .line 149
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    neg-long p1, p1

    .line 152
    .end local p1
    :cond_0
    return-wide p1
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 142
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    :cond_0
    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 113
    instance-of v1, p1, Lcom/android/mms/ui/MessageListItem;

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p0, p3}, Lcom/android/mms/ui/BookmarkListAdapter;->getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    .line 115
    .local v0, msgItem:Lcom/android/mms/ui/MessageItem;
    check-cast p1, Lcom/android/mms/ui/MessageListItem;

    .end local p1
    invoke-virtual {p1, v0, v2, v2}, Lcom/android/mms/ui/MessageListItem;->rebind(Lcom/android/mms/ui/MessageItem;ZZ)V

    .line 117
    .end local v0           #msgItem:Lcom/android/mms/ui/MessageItem;
    :cond_0
    return-void
.end method

.method public deleteBookmark(Lcom/android/mms/ui/MessageItem;)V
    .locals 8
    .parameter "msgItem"

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget-object v7, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 93
    .local v7, uri:Landroid/net/Uri;
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v0

    invoke-static {v7, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 95
    .local v3, mUnLockUri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 96
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "locked"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mBackgroundQueryHandler:Lcom/android/mms/ui/BookmarkListAdapter$BackgroundQueryHandler;

    const/16 v1, 0x3e8

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/ui/BookmarkListAdapter$BackgroundQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/mms/ui/BookmarkListAdapter;->load()V

    .line 100
    return-void

    .line 91
    .end local v3           #mUnLockUri:Landroid/net/Uri;
    .end local v4           #values:Landroid/content/ContentValues;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_0
    sget-object v7, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .restart local v7       #uri:Landroid/net/Uri;
    goto :goto_0
.end method

.method public getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 4
    .parameter "c"

    .prologue
    .line 120
    iget-object v3, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, type:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 123
    .local v0, msgId:J
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/mms/ui/BookmarkListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    return-object v3
.end method

.method public getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 10
    .parameter "type"
    .parameter "msgId"
    .parameter "c"

    .prologue
    const/4 v9, 0x0

    .line 127
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/BookmarkListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/ui/MessageItem;

    .line 128
    .local v8, item:Lcom/android/mms/ui/MessageItem;
    if-nez v8, :cond_1

    if-eqz p4, :cond_1

    invoke-direct {p0, p4}, Lcom/android/mms/ui/BookmarkListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    :try_start_0
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;Z)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v8           #item:Lcom/android/mms/ui/MessageItem;
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/BookmarkListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    move-object v1, v0

    .line 137
    :goto_1
    return-object v1

    .line 132
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v8       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v7

    move-object v0, v8

    .line 133
    .end local v8           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    .local v7, e:Lcom/google/android/mms/MmsException;
    :goto_2
    const-string v2, "BookmarkListAdapter"

    invoke-virtual {v7}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "Caught MmsException"

    :goto_3
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v9

    .line 134
    goto :goto_1

    .line 133
    :cond_0
    invoke-virtual {v7}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 132
    .end local v7           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v7

    goto :goto_2

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v8       #item:Lcom/android/mms/ui/MessageItem;
    :cond_1
    move-object v0, v8

    .end local v8           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_0
.end method

.method public load()V
    .locals 9

    .prologue
    const/16 v1, 0x3e9

    .line 69
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mBackgroundQueryHandler:Lcom/android/mms/ui/BookmarkListAdapter$BackgroundQueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BookmarkListAdapter$BackgroundQueryHandler;->cancelOperation(I)V

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mBackgroundQueryHandler:Lcom/android/mms/ui/BookmarkListAdapter$BackgroundQueryHandler;

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    sget-object v3, Lmiui/provider/ExtraTelephony$MmsSms;->CONTENT_ALL_LOCKED_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/ui/BookmarkListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/BookmarkListAdapter$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v8

    .line 76
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 104
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/BookmarkListAdapter;->getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    .line 105
    .local v1, msgItem:Lcom/android/mms/ui/MessageItem;
    iget-object v2, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040004

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    .line 106
    .local v0, mli:Lcom/android/mms/ui/MessageListItem;
    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListItem;->bind(Lcom/android/mms/ui/MessageItem;)V

    .line 107
    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 84
    return-void
.end method
