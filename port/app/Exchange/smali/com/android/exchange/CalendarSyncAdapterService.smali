.class public Lcom/android/exchange/CalendarSyncAdapterService;
.super Landroid/app/Service;
.source "CalendarSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;
    }
.end annotation


# static fields
.field private static final ID_SYNC_KEY_PROJECTION:[Ljava/lang/String;

.field private static sSyncAdapter:Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/CalendarSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/CalendarSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "syncKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/CalendarSyncAdapterService;->ID_SYNC_KEY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-static/range {p0 .. p5}, Lcom/android/exchange/CalendarSyncAdapterService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    return-void
.end method

.method private static performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 15
    .parameter "context"
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 101
    .local v1, cr:Landroid/content/ContentResolver;
    sget-boolean v11, Lcom/android/exchange/Eas;->USER_LOG:Z

    .line 102
    .local v11, logging:Z
    const-string v2, "upload"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const-string v4, "dirty=1 AND account_name=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v14, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 106
    .local v10, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 107
    if-eqz v11, :cond_0

    .line 108
    const-string v2, "EAS CalendarSyncAdapterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No changes for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 151
    .end local v10           #c:Landroid/database/Cursor;
    :goto_0
    return-void

    .line 113
    .restart local v10       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 118
    .end local v10           #c:Landroid/database/Cursor;
    :cond_2
    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "emailAddress=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v14, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 123
    .local v7, accountCursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 124
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 126
    .local v8, accountId:J
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/exchange/CalendarSyncAdapterService;->ID_SYNC_KEY_PROJECTION:[Ljava/lang/String;

    const-string v4, "accountKey=? AND type=65"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v12

    .line 129
    .local v12, mailboxCursor:Landroid/database/Cursor;
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 130
    if-eqz v11, :cond_3

    .line 131
    const-string v2, "EAS CalendarSyncAdapterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upload sync requested for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_3
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 134
    .local v13, syncKey:Ljava/lang/String;
    if-eqz v13, :cond_4

    const-string v2, "0"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 135
    :cond_4
    if-eqz v11, :cond_5

    .line 136
    const-string v2, "EAS CalendarSyncAdapterService"

    const-string v3, "Can\'t sync; mailbox in initial state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 145
    :cond_5
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 149
    .end local v8           #accountId:J
    .end local v12           #mailboxCursor:Landroid/database/Cursor;
    .end local v13           #syncKey:Ljava/lang/String;
    :cond_6
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 141
    .restart local v8       #accountId:J
    .restart local v12       #mailboxCursor:Landroid/database/Cursor;
    .restart local v13       #syncKey:Ljava/lang/String;
    :cond_7
    const/4 v2, 0x0

    :try_start_4
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/exchange/ExchangeService;->serviceRequest(JI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 145
    .end local v13           #syncKey:Ljava/lang/String;
    :cond_8
    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 149
    .end local v8           #accountId:J
    .end local v12           #mailboxCursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    .line 145
    .restart local v8       #accountId:J
    .restart local v12       #mailboxCursor:Landroid/database/Cursor;
    :catchall_2
    move-exception v2

    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 88
    sget-object v0, Lcom/android/exchange/CalendarSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {v0}, Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 79
    sget-object v1, Lcom/android/exchange/CalendarSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    :try_start_0
    sget-object v0, Lcom/android/exchange/CalendarSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {p0}, Lcom/android/exchange/CalendarSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/exchange/CalendarSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;

    .line 83
    :cond_0
    monitor-exit v1

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
