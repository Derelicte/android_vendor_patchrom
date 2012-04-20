.class Lcom/android/email/Controller$ServiceCallback;
.super Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;


# direct methods
.method private constructor <init>(Lcom/android/email/Controller;)V
    .locals 0
    .parameter

    .prologue
    .line 1582
    iput-object p1, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/Controller;Lcom/android/email/Controller$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1582
    invoke-direct {p0, p1}, Lcom/android/email/Controller$ServiceCallback;-><init>(Lcom/android/email/Controller;)V

    return-void
.end method

.method private mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;
    .locals 2
    .parameter "statusCode"

    .prologue
    .line 1687
    sparse-switch p1, :sswitch_data_0

    .line 1719
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 1692
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1695
    :sswitch_1
    new-instance v0, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1698
    :sswitch_2
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto :goto_0

    .line 1701
    :sswitch_3
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto :goto_0

    .line 1704
    :sswitch_4
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto :goto_0

    .line 1707
    :sswitch_5
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto :goto_0

    .line 1710
    :sswitch_6
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto :goto_0

    .line 1687
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x11 -> :sswitch_5
        0x16 -> :sswitch_1
        0x17 -> :sswitch_3
        0x18 -> :sswitch_0
        0x19 -> :sswitch_4
        0x20 -> :sswitch_2
        0x21 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public loadAttachmentStatus(JJII)V
    .locals 12
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 1588
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    .line 1589
    .local v2, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p5, :pswitch_data_0

    .line 1604
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/android/emailcommon/provider/Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v3

    .line 1605
    .local v3, accountId:J
    iget-object v5, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v11

    monitor-enter v11

    .line 1606
    :try_start_0
    iget-object v5, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .local v1, listener:Lcom/android/email/Controller$Result;
    move-wide v5, p1

    move-wide v7, p3

    move/from16 v9, p6

    .line 1607
    invoke-virtual/range {v1 .. v9}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_1

    .line 1610
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    .end local v10           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1591
    .end local v3           #accountId:J
    :pswitch_0
    const/16 p6, 0x64

    .line 1592
    goto :goto_0

    .line 1599
    :pswitch_1
    if-ltz p6, :cond_1

    const/16 v5, 0x64

    move/from16 v0, p6

    if-lt v0, v5, :cond_0

    .line 1611
    :cond_1
    :goto_2
    return-void

    .line 1610
    .restart local v3       #accountId:J
    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1589
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendMessageStatus(JLjava/lang/String;II)V
    .locals 9
    .parameter "messageId"
    .parameter "subject"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 1621
    const-wide/16 v2, -0x1

    .line 1622
    .local v2, accountId:J
    invoke-direct {p0, p4}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v1

    .line 1623
    .local v1, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p4, :pswitch_data_0

    .line 1634
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8

    .line 1635
    :try_start_0
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .local v0, listener:Lcom/android/email/Controller$Result;
    move-wide v4, p1

    move v6, p5

    .line 1636
    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_1

    .line 1638
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1625
    :pswitch_0
    const/16 p5, 0x64

    .line 1626
    goto :goto_0

    .line 1629
    :pswitch_1
    if-ltz p5, :cond_1

    const/16 v4, 0x64

    if-lt p5, v4, :cond_0

    .line 1639
    :cond_1
    :goto_2
    return-void

    .line 1638
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1623
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public syncMailboxListStatus(JII)V
    .locals 5
    .parameter "accountId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 1642
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    .line 1643
    .local v2, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p3, :pswitch_data_0

    .line 1654
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    monitor-enter v4

    .line 1655
    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 1656
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, v2, p1, p2, p4}, Lcom/android/email/Controller$Result;->updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_1

    .line 1658
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1645
    :pswitch_0
    const/16 p4, 0x64

    .line 1646
    goto :goto_0

    .line 1649
    :pswitch_1
    if-ltz p4, :cond_1

    const/16 v3, 0x64

    if-lt p4, v3, :cond_0

    .line 1659
    :cond_1
    :goto_2
    return-void

    .line 1658
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1643
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public syncMailboxStatus(JII)V
    .locals 13
    .parameter "mailboxId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 1662
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    .line 1663
    .local v2, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p3, :pswitch_data_0

    .line 1675
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v11

    .line 1677
    .local v11, mbx:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v11, :cond_2

    .line 1684
    .end local v11           #mbx:Lcom/android/emailcommon/provider/Mailbox;
    :cond_1
    :goto_1
    return-void

    .line 1665
    :pswitch_0
    const/16 p4, 0x64

    .line 1666
    goto :goto_0

    .line 1669
    :pswitch_1
    if-ltz p4, :cond_1

    const/16 v5, 0x64

    move/from16 v0, p4

    if-lt v0, v5, :cond_0

    goto :goto_1

    .line 1678
    .restart local v11       #mbx:Lcom/android/emailcommon/provider/Mailbox;
    :cond_2
    iget-wide v3, v11, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 1679
    .local v3, accountId:J
    iget-object v5, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v12

    monitor-enter v12

    .line 1680
    :try_start_0
    iget-object v5, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 1681
    .local v1, listener:Lcom/android/email/Controller$Result;
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v5, p1

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/email/Controller$Result;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJIILjava/util/ArrayList;)V

    goto :goto_2

    .line 1683
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    .end local v10           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1663
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
