.class Lcom/android/mms/ui/ConversationBase$3;
.super Ljava/lang/Object;
.source "ConversationBase.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationBase;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationBase;)V
    .locals 0
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase$3;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 17
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 456
    move-object/from16 v1, p3

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 457
    .local v1, contextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v9, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 458
    .local v9, selectedView:Landroid/view/View;
    if-eqz v9, :cond_0

    instance-of v11, v9, Lcom/android/mms/ui/MessageListItem;

    if-nez v11, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget v11, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationBase$3;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v12, v12, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v12}, Lcom/android/mms/ui/MessageListView;->getHeaderViewsCount()I

    move-result v12

    sub-int v8, v11, v12

    .line 462
    .local v8, position:I
    const/4 v2, 0x0

    .line 463
    .local v2, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 464
    .local v10, type:Ljava/lang/String;
    const-wide/16 v5, -0x1

    .line 466
    .local v5, msgId:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/ConversationBase$3;->this$0:Lcom/android/mms/ui/ConversationBase;

    #getter for: Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v11}, Lcom/android/mms/ui/ConversationBase;->access$400(Lcom/android/mms/ui/ConversationBase;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/android/mms/ui/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/database/Cursor;

    move-object v2, v0

    .line 467
    const/4 v11, 0x0

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 468
    const/4 v11, 0x1

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 472
    if-eqz v2, :cond_0

    if-eqz v10, :cond_0

    const-wide/16 v11, -0x1

    cmp-long v11, v5, v11

    if-eqz v11, :cond_0

    .line 476
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/ConversationBase$3;->this$0:Lcom/android/mms/ui/ConversationBase;

    #getter for: Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v11}, Lcom/android/mms/ui/ConversationBase;->access$400(Lcom/android/mms/ui/ConversationBase;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v11

    invoke-virtual {v11, v10, v5, v6, v2}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v7

    .line 477
    .local v7, msgItem:Lcom/android/mms/ui/MessageItem;
    if-nez v7, :cond_2

    .line 478
    const-string v11, "ConversationBase"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot load message item for type = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", msgId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 469
    .end local v7           #msgItem:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v3

    .line 470
    .local v3, e:Ljava/lang/Exception;
    goto :goto_0

    .line 483
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v7       #msgItem:Lcom/android/mms/ui/MessageItem;
    :cond_2
    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 484
    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 491
    :cond_3
    :goto_1
    new-instance v4, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/ConversationBase$3;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-direct {v4, v11, v8}, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;-><init>(Lcom/android/mms/ui/ConversationBase;I)V

    .line 494
    .local v4, l:Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;
    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 495
    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    const v14, 0x7f0a0025

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 499
    :cond_4
    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v11

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/ConversationBase$3;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v11, v11, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v11

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-nez v11, :cond_5

    .line 502
    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->isLocked()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 503
    const/4 v11, 0x0

    const/16 v12, 0xd

    const/4 v13, 0x0

    const v14, 0x7f0a00c0

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 511
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/ConversationBase$3;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v11, v11, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v11

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-eqz v11, :cond_6

    .line 512
    const/4 v11, 0x0

    const/16 v12, 0xf

    const/4 v13, 0x0

    const v14, 0x7f0a019e

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 516
    :cond_6
    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 517
    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 530
    :cond_7
    :goto_3
    :pswitch_0
    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->getSimplePduDoc()Lcom/android/mms/ui/SimplePduDoc;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/mms/ui/SimplePduDoc;->getPageAppearanceType(I)I

    move-result v11

    packed-switch v11, :pswitch_data_1

    .line 541
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/ConversationBase$3;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v12

    #calls: Lcom/android/mms/ui/ConversationBase;->haveSomethingToCopyToSDCard(J)Z
    invoke-static {v11, v12, v13}, Lcom/android/mms/ui/ConversationBase;->access$500(Lcom/android/mms/ui/ConversationBase;J)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 542
    const/4 v11, 0x0

    const/16 v12, 0xa

    const/4 v13, 0x0

    const v14, 0x7f0a00f2

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 545
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/ConversationBase$3;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v12

    #calls: Lcom/android/mms/ui/ConversationBase;->haveSomethingToCopyToDrmProvider(J)Z
    invoke-static {v11, v12, v13}, Lcom/android/mms/ui/ConversationBase;->access$600(Lcom/android/mms/ui/ConversationBase;J)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 546
    const/4 v11, 0x0

    const/16 v12, 0xe

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ConversationBase$3;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v15

    #calls: Lcom/android/mms/ui/ConversationBase;->getDrmMimeMenuStringRsrc(J)I
    invoke-static/range {v14 .. v16}, Lcom/android/mms/ui/ConversationBase;->access$700(Lcom/android/mms/ui/ConversationBase;J)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 556
    :cond_9
    :goto_4
    :pswitch_1
    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 558
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/ConversationBase$3;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v11}, Lcom/android/mms/ui/ConversationBase;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/data/ContactList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->getMessageType()I

    move-result v11

    const/4 v12, 0x4

    if-eq v11, v12, :cond_a

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->getMessageType()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_b

    .line 561
    :cond_a
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const v14, 0x7f0a00bd

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 566
    :cond_b
    const/4 v11, 0x0

    const/16 v12, 0x9

    const/4 v13, 0x0

    const v14, 0x7f0a002b

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 568
    const/4 v11, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x0

    const v14, 0x7f0a001c

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 570
    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    const v14, 0x7f0a001e

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 486
    .end local v4           #l:Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;
    :cond_c
    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->getSubject()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 487
    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->getSubject()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_1

    .line 506
    .restart local v4       #l:Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;
    :cond_d
    const/4 v11, 0x0

    const/16 v12, 0xc

    const/4 v13, 0x0

    const v14, 0x7f0a00bf

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 524
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/ConversationBase$3;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v11}, Lcom/android/mms/ui/ConversationBase;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/data/ContactList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    .line 525
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const v14, 0x7f0a00bd

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 535
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/ConversationBase$3;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v12

    #calls: Lcom/android/mms/ui/ConversationBase;->haveSomethingToCopyToSDCard(J)Z
    invoke-static {v11, v12, v13}, Lcom/android/mms/ui/ConversationBase;->access$500(Lcom/android/mms/ui/ConversationBase;J)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 536
    const/4 v11, 0x0

    const/16 v12, 0xa

    const/4 v13, 0x0

    const v14, 0x7f0a00f2

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 517
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 530
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
