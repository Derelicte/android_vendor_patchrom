.class final Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;
.super Ljava/lang/Object;
.source "ConversationBase.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MsgListMenuClickListener"
.end annotation


# instance fields
.field private final mPosition:I

.field final synthetic this$0:Lcom/android/mms/ui/ConversationBase;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationBase;I)V
    .locals 0
    .parameter
    .parameter "position"

    .prologue
    .line 725
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 726
    iput p2, p0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->mPosition:I

    .line 727
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 19
    .parameter "item"

    .prologue
    .line 729
    const/4 v9, 0x0

    .line 730
    .local v9, cursor:Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 731
    .local v18, type:Ljava/lang/String;
    const-wide/16 v13, -0x1

    .line 733
    .local v13, msgId:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    #getter for: Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationBase;->access$400(Lcom/android/mms/ui/ConversationBase;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->mPosition:I

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/database/Cursor;

    move-object v9, v0

    .line 734
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 735
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v13

    .line 739
    if-eqz v9, :cond_0

    if-eqz v18, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v2, v13, v2

    if-nez v2, :cond_1

    .line 740
    :cond_0
    const/4 v2, 0x0

    .line 827
    :goto_0
    return v2

    .line 736
    :catch_0
    move-exception v10

    .line 737
    .local v10, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0

    .line 743
    .end local v10           #e:Ljava/lang/Exception;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    const/4 v3, 0x1

    move-object/from16 v0, v18

    #calls: Lcom/android/mms/ui/ConversationBase;->getMessageItem(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;
    invoke-static {v2, v0, v13, v14, v3}, Lcom/android/mms/ui/ConversationBase;->access$800(Lcom/android/mms/ui/ConversationBase;Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v15

    .line 744
    .local v15, msgItem:Lcom/android/mms/ui/MessageItem;
    if-nez v15, :cond_2

    .line 745
    const/4 v2, 0x0

    goto :goto_0

    .line 748
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 827
    :pswitch_0
    const/4 v2, 0x0

    goto :goto_0

    .line 750
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    #calls: Lcom/android/mms/ui/ConversationBase;->editMessageItem(Lcom/android/mms/ui/MessageItem;)V
    invoke-static {v2, v15}, Lcom/android/mms/ui/ConversationBase;->access$900(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/MessageItem;)V

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationBase;->drawBottomPanel()V

    .line 752
    const/4 v2, 0x1

    goto :goto_0

    .line 755
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v15}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/mms/ui/ConversationBase;->copyToClipboard(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/mms/ui/ConversationBase;->access$1000(Lcom/android/mms/ui/ConversationBase;Ljava/lang/String;)V

    .line 756
    const/4 v2, 0x1

    goto :goto_0

    .line 759
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-static {v2, v15}, Lcom/android/mms/ui/MessageUtils;->forwardMessage(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)V

    .line 760
    const/4 v2, 0x1

    goto :goto_0

    .line 763
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V

    .line 765
    const/4 v2, 0x1

    goto :goto_0

    .line 768
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-static {v2, v9, v15}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v12

    .line 770
    .local v12, messageDetails:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a00aa

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 776
    const/4 v2, 0x1

    goto :goto_0

    .line 779
    .end local v12           #messageDetails:Ljava/lang/String;
    :pswitch_6
    new-instance v1, Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v15}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/mms/ui/MessageItem;->isLocked()Z

    move-result v4

    invoke-virtual {v15}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v5

    invoke-virtual {v15}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ConversationBase;Landroid/net/Uri;ZJZ)V

    .line 782
    .local v1, l:Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v15}, Lcom/android/mms/ui/MessageItem;->isLocked()Z

    move-result v3

    invoke-virtual {v15}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v4

    #calls: Lcom/android/mms/ui/ConversationBase;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;ZZ)V
    invoke-static {v2, v1, v3, v4}, Lcom/android/mms/ui/ConversationBase;->access$1100(Lcom/android/mms/ui/ConversationBase;Landroid/content/DialogInterface$OnClickListener;ZZ)V

    .line 783
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 787
    .end local v1           #l:Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    #calls: Lcom/android/mms/ui/ConversationBase;->copyMedia(J)Z
    invoke-static {v2, v13, v14}, Lcom/android/mms/ui/ConversationBase;->access$1200(Lcom/android/mms/ui/ConversationBase;J)Z

    move-result v17

    .line 789
    .local v17, success:Z
    new-instance v8, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-direct {v8, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 790
    .local v8, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a00f2

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 791
    const v2, 0x1010355

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 792
    if-eqz v17, :cond_3

    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    const v3, 0x7f0a00f3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/mms/ui/ConversationBase;->access$1300()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/ConversationBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 797
    :goto_1
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 798
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 799
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 795
    :cond_3
    const v2, 0x7f0a00f4

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 803
    .end local v8           #builder:Landroid/app/AlertDialog$Builder;
    .end local v17           #success:Z
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    #calls: Lcom/android/mms/ui/ConversationBase;->copyToDrmProvider(J)Z
    invoke-static {v3, v13, v14}, Lcom/android/mms/ui/ConversationBase;->access$1400(Lcom/android/mms/ui/ConversationBase;J)Z

    move-result v3

    #calls: Lcom/android/mms/ui/ConversationBase;->getDrmMimeSavedStringRsrc(JZ)I
    invoke-static {v2, v13, v14, v3}, Lcom/android/mms/ui/ConversationBase;->access$1500(Lcom/android/mms/ui/ConversationBase;JZ)I

    move-result v16

    .line 804
    .local v16, resId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 805
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 809
    .end local v16           #resId:I
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    const/4 v3, 0x1

    #calls: Lcom/android/mms/ui/ConversationBase;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V
    invoke-static {v2, v15, v3}, Lcom/android/mms/ui/ConversationBase;->access$1600(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/MessageItem;Z)V

    .line 810
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 814
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    const/4 v3, 0x0

    #calls: Lcom/android/mms/ui/ConversationBase;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V
    invoke-static {v2, v15, v3}, Lcom/android/mms/ui/ConversationBase;->access$1600(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/MessageItem;Z)V

    .line 815
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 819
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v15}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v11

    .line 821
    .local v11, intent:Landroid/content/Intent;
    const-string v2, "select_id"

    invoke-virtual {v11, v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-static {v2, v11}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->route(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 823
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 748
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method
