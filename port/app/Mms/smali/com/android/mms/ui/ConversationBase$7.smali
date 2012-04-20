.class Lcom/android/mms/ui/ConversationBase$7;
.super Landroid/os/Handler;
.source "ConversationBase.java"


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
    .line 1232
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase$7;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x0

    .line 1236
    const/4 v2, 0x0

    .line 1237
    .local v2, resend:Z
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 1248
    :pswitch_0
    const-string v5, "ConversationBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :cond_0
    :goto_0
    return-void

    .line 1239
    :pswitch_1
    const-string v3, "mms"

    .line 1252
    .local v3, type:Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/android/mms/ui/ConversationBase$7;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    #calls: Lcom/android/mms/ui/ConversationBase;->getMessageItem(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;
    invoke-static {v6, v3, v7, v8, v9}, Lcom/android/mms/ui/ConversationBase;->access$800(Lcom/android/mms/ui/ConversationBase;Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    .line 1253
    .local v1, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v1, :cond_0

    .line 1254
    if-eqz v2, :cond_3

    .line 1255
    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1256
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase$7;->this$0:Lcom/android/mms/ui/ConversationBase;

    const/4 v6, 0x1

    #setter for: Lcom/android/mms/ui/ConversationBase;->mSentMessage:Z
    invoke-static {v5, v6}, Lcom/android/mms/ui/ConversationBase;->access$1702(Lcom/android/mms/ui/ConversationBase;Z)Z

    .line 1257
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    .line 1258
    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->resendMsgInGroup()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 1259
    .local v4, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase$7;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-static {v5, v4, v10, v9}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    goto :goto_2

    .line 1243
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #msgItem:Lcom/android/mms/ui/MessageItem;
    .end local v3           #type:Ljava/lang/String;
    .end local v4           #uri:Landroid/net/Uri;
    :pswitch_2
    const/4 v2, 0x1

    .line 1245
    :pswitch_3
    const-string v3, "sms"

    .line 1246
    .restart local v3       #type:Ljava/lang/String;
    goto :goto_1

    .line 1263
    .restart local v1       #msgItem:Lcom/android/mms/ui/MessageItem;
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase$7;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6, v10, v9}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 1267
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase$7;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-static {v5}, Lcom/android/mms/transaction/SmsMessageSender;->resendMessage(Landroid/content/Context;)V

    goto :goto_0

    .line 1270
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase$7;->this$0:Lcom/android/mms/ui/ConversationBase;

    #calls: Lcom/android/mms/ui/ConversationBase;->editMessageItem(Lcom/android/mms/ui/MessageItem;)V
    invoke-static {v5, v1}, Lcom/android/mms/ui/ConversationBase;->access$900(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/MessageItem;)V

    .line 1271
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase$7;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v5}, Lcom/android/mms/ui/ConversationBase;->drawBottomPanel()V

    goto :goto_0

    .line 1237
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
