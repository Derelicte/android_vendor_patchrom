.class Lcom/android/exchange/adapter/FolderSyncParser$1;
.super Ljava/lang/Object;
.source "FolderSyncParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/adapter/FolderSyncParser;->changesParser(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/adapter/FolderSyncParser;

.field final synthetic val$addMailboxes:Ljava/util/ArrayList;

.field final synthetic val$initialSync:Z

.field final synthetic val$ops:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/exchange/adapter/FolderSyncParser;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 566
    iput-object p1, p0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iput-object p2, p0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$addMailboxes:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$initialSync:Z

    iput-object p4, p0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$ops:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 573
    :try_start_0
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v16, validMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Mailbox;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 578
    .local v15, userMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Mailbox;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 579
    .local v13, mailboxMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/provider/Mailbox;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$addMailboxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/emailcommon/provider/Mailbox;

    .line 580
    .local v11, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    iget-object v1, v11, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v13, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 640
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v13           #mailboxMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/provider/Mailbox;>;"
    .end local v15           #userMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Mailbox;>;"
    .end local v16           #validMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Mailbox;>;"
    :catchall_0
    move-exception v1

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 583
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v13       #mailboxMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/provider/Mailbox;>;"
    .restart local v15       #userMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Mailbox;>;"
    .restart local v16       #validMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Mailbox;>;"
    :cond_0
    const/4 v12, 0x0

    .line 584
    .local v12, mailboxCommitCount:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$addMailboxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/emailcommon/provider/Mailbox;

    .line 586
    .restart local v11       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget v1, v1, Lcom/android/exchange/adapter/FolderSyncParser;->type:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 587
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$initialSync:Z

    if-eqz v1, :cond_1

    add-int/lit8 v12, v12, 0x1

    const/16 v1, 0x14

    if-ne v12, v1, :cond_1

    .line 593
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$ops:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    #calls: Lcom/android/exchange/adapter/FolderSyncParser;->commitMailboxes(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)Z
    invoke-static {v1, v0, v15, v13, v2}, Lcom/android/exchange/adapter/FolderSyncParser;->access$300(Lcom/android/exchange/adapter/FolderSyncParser;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 595
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v1, v1, Lcom/android/exchange/adapter/FolderSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->stop()V

    .line 596
    monitor-exit v17

    .line 641
    .end local v11           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :goto_3
    return-void

    .line 589
    .restart local v11       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 599
    :cond_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 600
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 601
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$ops:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 602
    const/4 v12, 0x0

    goto :goto_1

    .line 606
    .end local v11           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_4
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 607
    .local v9, cv:Landroid/content/ContentValues;
    const-string v1, "syncKey"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v2, v2, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$ops:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v3, v3, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$ops:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    #calls: Lcom/android/exchange/adapter/FolderSyncParser;->commitMailboxes(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)Z
    invoke-static {v1, v0, v15, v13, v2}, Lcom/android/exchange/adapter/FolderSyncParser;->access$300(Lcom/android/exchange/adapter/FolderSyncParser;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 614
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v1, v1, Lcom/android/exchange/adapter/FolderSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->stop()V

    .line 615
    monitor-exit v17

    goto :goto_3

    .line 617
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accountKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v2, v2, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 619
    .local v7, accountSelector:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    #getter for: Lcom/android/exchange/adapter/FolderSyncParser;->mFixupUninitializedNeeded:Z
    invoke-static {v1}, Lcom/android/exchange/adapter/FolderSyncParser;->access$400(Lcom/android/exchange/adapter/FolderSyncParser;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 620
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v1, v1, Lcom/android/exchange/adapter/FolderSyncParser;->mContext:Landroid/content/Context;

    invoke-static {v1, v7}, Lcom/android/exchange/provider/MailboxUtilities;->fixupUninitializedParentKeys(Landroid/content/Context;Ljava/lang/String;)V

    .line 624
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    #getter for: Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/exchange/adapter/FolderSyncParser;->access$500(Lcom/android/exchange/adapter/FolderSyncParser;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 625
    .local v14, parentServerId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v1, v1, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v4, "parentServerId=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 629
    .local v8, c:Landroid/database/Cursor;
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 630
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v1, v1, Lcom/android/exchange/adapter/FolderSyncParser;->mContext:Landroid/content/Context;

    invoke-static {v1, v8, v7}, Lcom/android/exchange/provider/MailboxUtilities;->setFlagsAndChildrensParentKey(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 634
    :cond_7
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 639
    .end local v8           #c:Landroid/database/Cursor;
    .end local v14           #parentServerId:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v1, v1, Lcom/android/exchange/adapter/FolderSyncParser;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iget-object v2, v2, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v1, v2, v3}, Lcom/android/exchange/provider/MailboxUtilities;->endMailboxChanges(Landroid/content/Context;J)V

    .line 640
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3
.end method
