.class public Lcom/android/mms/ui/NewMessagePopupActivity;
.super Landroid/app/ListActivity;
.source "NewMessagePopupActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Lcom/android/mms/ui/SizeAwareLinearLayout$OnMeasureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;,
        Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/android/mms/ui/NewMessagePopupActivity;


# instance fields
.field private mAdapter:Lcom/android/mms/ui/NewMessagePopupListAdapter;

.field private mBottomPanel:Landroid/view/View;

.field private mButtonDelete:Landroid/widget/ImageView;

.field private mButtonDismiss:Landroid/widget/ImageView;

.field private mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

.field mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

.field private mMessageList:Landroid/widget/ListView;

.field private mMessageSender:Landroid/widget/TextView;

.field mMessageThreads:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;",
            ">;"
        }
    .end annotation
.end field

.field private mSendButton:Landroid/widget/Button;

.field private mSenderDetails:Landroid/widget/TextView;

.field private mSenderPanel:Landroid/view/View;

.field private mTextCounter:Landroid/widget/TextView;

.field private mTextEditor:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/NewMessagePopupActivity;->mInstance:Lcom/android/mms/ui/NewMessagePopupActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 93
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mMessageThreads:Ljava/util/LinkedList;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/NewMessagePopupActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->deleteMessage()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/NewMessagePopupActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->dismissMessage()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/NewMessagePopupActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->sendMessage()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/NewMessagePopupActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->gotoConversation()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/NewMessagePopupActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/NewMessagePopupActivity;Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/mms/ui/NewMessagePopupActivity;->markAsRead(Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;)V

    return-void
.end method

.method private canSwitchThread()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deleteMessage()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSendButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 329
    new-instance v0, Lcom/android/mms/ui/NewMessagePopupActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/NewMessagePopupActivity$6;-><init>(Lcom/android/mms/ui/NewMessagePopupActivity;)V

    invoke-virtual {v0}, Lcom/android/mms/ui/NewMessagePopupActivity$6;->start()V

    .line 340
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->proceedToNextThread()V

    .line 341
    return-void
.end method

.method public static dismiss()V
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/mms/ui/NewMessagePopupActivity;->mInstance:Lcom/android/mms/ui/NewMessagePopupActivity;

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/android/mms/ui/NewMessagePopupActivity;->mInstance:Lcom/android/mms/ui/NewMessagePopupActivity;

    invoke-static {v0}, Lcom/android/mms/ui/NewMessagePopupActivity;->hideSoftInputMethod(Landroid/app/Activity;)V

    .line 102
    sget-object v0, Lcom/android/mms/ui/NewMessagePopupActivity;->mInstance:Lcom/android/mms/ui/NewMessagePopupActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/NewMessagePopupActivity;->finish()V

    .line 103
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/NewMessagePopupActivity;->mInstance:Lcom/android/mms/ui/NewMessagePopupActivity;

    .line 105
    :cond_0
    return-void
.end method

.method private dismissMessage()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSendButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 345
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/NewMessagePopupActivity;->markAsReadAsync(Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;)V

    .line 346
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->proceedToNextThread()V

    .line 347
    return-void
.end method

.method private findMessageThreadAndRemoveFromList(Ljava/lang/String;)Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;
    .locals 3
    .parameter "address"

    .prologue
    .line 263
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mMessageThreads:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 264
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    .line 266
    .local v1, messageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;
    iget-object v2, v1, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->address:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 271
    .end local v1           #messageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private gotoConversation()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 373
    iget-object v3, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 374
    const-string v3, "clipboard"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/NewMessagePopupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 375
    .local v1, clip:Landroid/content/ClipboardManager;
    iget-object v3, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 376
    const v3, 0x7f0a0197

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 379
    .end local v1           #clip:Landroid/content/ClipboardManager;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    iget-object v3, v3, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->address:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 380
    .local v2, l:Lcom/android/mms/data/ContactList;
    invoke-static {p0, v2, v5}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 381
    .local v0, c:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->route(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 383
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->finish()V

    .line 384
    return-void
.end method

.method private static hideSoftInputMethod(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 108
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 110
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 111
    return-void
.end method

.method private markAsRead(Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;)V
    .locals 5
    .parameter "thread"

    .prologue
    const/4 v4, 0x1

    .line 316
    iget-boolean v3, p1, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->markedRead:Z

    if-eqz v3, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iput-boolean v4, p1, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->markedRead:Z

    .line 320
    iget-object v3, p1, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->address:Ljava/lang/String;

    invoke-static {p0, v3}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    .line 321
    .local v1, threadId:J
    invoke-static {p0, v1, v2, v4}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 322
    .local v0, c:Lcom/android/mms/data/Conversation;
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->markAsReadSync()V

    goto :goto_0
.end method

.method private markAsReadAsync(Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;)V
    .locals 5
    .parameter "thread"

    .prologue
    const/4 v4, 0x1

    .line 304
    iget-boolean v3, p1, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->markedRead:Z

    if-eqz v3, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iput-boolean v4, p1, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->markedRead:Z

    .line 308
    iget-object v3, p1, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->address:Ljava/lang/String;

    invoke-static {p0, v3}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    .line 309
    .local v1, threadId:J
    invoke-static {p0, v1, v2, v4}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 310
    .local v0, c:Lcom/android/mms/data/Conversation;
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->markAsReadAsync()V

    goto :goto_0
.end method

.method private proceedToNextThread()V
    .locals 3

    .prologue
    .line 287
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mMessageThreads:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 288
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    .line 290
    .local v1, messageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    if-ne v1, v2, :cond_0

    .line 291
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 295
    .end local v1           #messageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mMessageThreads:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 296
    invoke-static {}, Lcom/android/mms/ui/NewMessagePopupActivity;->dismiss()V

    .line 301
    :goto_0
    return-void

    .line 298
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mMessageThreads:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    iput-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    .line 299
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->showCurrentThread(Z)V

    goto :goto_0
.end method

.method private processMessage(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 218
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v6

    .line 220
    .local v6, msgs:[Landroid/telephony/SmsMessage;
    const-string v1, ""

    .line 221
    .local v1, body:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v8, v6

    if-ge v3, v8, :cond_0

    .line 222
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v3

    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 225
    :cond_0
    aget-object v5, v6, v10

    .line 227
    .local v5, msg:Landroid/telephony/SmsMessage;
    new-instance v2, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;-><init>(Lcom/android/mms/ui/NewMessagePopupActivity;)V

    .line 228
    .local v2, entry:Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    iput-object v8, v2, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;->uri:Landroid/net/Uri;

    .line 229
    iput-object v1, v2, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;->body:Ljava/lang/String;

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;->time:J

    .line 232
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, address:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/NewMessagePopupActivity;->findMessageThreadAndRemoveFromList(Ljava/lang/String;)Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    move-result-object v4

    .line 234
    .local v4, messageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;
    if-nez v4, :cond_1

    .line 235
    new-instance v4, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    .end local v4           #messageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;
    const/4 v8, 0x0

    invoke-direct {v4, p0, v8}, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;-><init>(Lcom/android/mms/ui/NewMessagePopupActivity;Lcom/android/mms/ui/NewMessagePopupActivity$1;)V

    .line 236
    .restart local v4       #messageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;
    iput-object v0, v4, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->address:Ljava/lang/String;

    .line 238
    const/4 v8, 0x2

    new-array v7, v8, [Ljava/lang/String;

    .line 239
    .local v7, numberInfo:[Ljava/lang/String;
    invoke-static {p0, v0, v7}, Lcom/android/mms/ui/MessageUtils;->getNumberInfo(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 240
    aget-object v8, v7, v10

    iput-object v8, v4, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->sender:Ljava/lang/String;

    .line 241
    aget-object v8, v7, v11

    iput-object v8, v4, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->senderDetails:Ljava/lang/String;

    .line 242
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v4, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->messageList:Ljava/util/ArrayList;

    .line 244
    .end local v7           #numberInfo:[Ljava/lang/String;
    :cond_1
    iget-object v8, v4, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->messageList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 245
    iget-object v8, v4, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->messageList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_2
    iget-object v8, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mMessageThreads:Ljava/util/LinkedList;

    invoke-virtual {v8, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 249
    iget-object v8, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    if-ne v8, v4, :cond_4

    .line 250
    iget-object v8, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    iput-boolean v10, v8, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->markedRead:Z

    .line 251
    invoke-direct {p0, v10}, Lcom/android/mms/ui/NewMessagePopupActivity;->showCurrentThread(Z)V

    .line 256
    :cond_3
    :goto_1
    return-void

    .line 252
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->canSwitchThread()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 253
    iput-object v4, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    .line 254
    invoke-direct {p0, v11}, Lcom/android/mms/ui/NewMessagePopupActivity;->showCurrentThread(Z)V

    goto :goto_1
.end method

.method private sendMessage()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSendButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 351
    new-instance v0, Lcom/android/mms/ui/NewMessagePopupActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/NewMessagePopupActivity$7;-><init>(Lcom/android/mms/ui/NewMessagePopupActivity;)V

    invoke-virtual {v0}, Lcom/android/mms/ui/NewMessagePopupActivity$7;->start()V

    .line 369
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->proceedToNextThread()V

    .line 370
    return-void
.end method

.method private showCurrentThread(Z)V
    .locals 3
    .parameter "cleanReply"

    .prologue
    const/4 v1, 0x0

    .line 275
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mMessageSender:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    iget-object v2, v2, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->sender:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSenderDetails:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    iget-object v2, v2, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->senderDetails:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSenderDetails:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    iget-object v0, v0, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->senderDetails:Ljava/lang/String;

    if-nez v0, :cond_2

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mAdapter:Lcom/android/mms/ui/NewMessagePopupListAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    iget-object v2, v2, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->messageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/NewMessagePopupListAdapter;->setMessageList(Ljava/util/ArrayList;)V

    .line 279
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mAdapter:Lcom/android/mms/ui/NewMessagePopupListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/NewMessagePopupListAdapter;->notifyDataSetChanged()V

    .line 280
    if-eqz p1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextEditor:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSendButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 284
    return-void

    :cond_2
    move v0, v1

    .line 277
    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 414
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 418
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/NewMessagePopupActivity;->markAsReadAsync(Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;)V

    .line 214
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    .line 215
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 115
    sput-object p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mInstance:Lcom/android/mms/ui/NewMessagePopupActivity;

    .line 117
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 121
    .local v0, window:Landroid/view/Window;
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040036

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/SizeAwareLinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

    .line 123
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

    invoke-virtual {v2, p0}, Lcom/android/mms/ui/SizeAwareLinearLayout;->setOnMeasureListener(Lcom/android/mms/ui/SizeAwareLinearLayout$OnMeasureListener;)V

    .line 124
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->setContentView(Landroid/view/View;)V

    .line 126
    const v2, 0x7f1000a9

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mButtonDelete:Landroid/widget/ImageView;

    .line 127
    const v2, 0x7f1000ad

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mButtonDismiss:Landroid/widget/ImageView;

    .line 128
    const v2, 0x7f1000aa

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSenderPanel:Landroid/view/View;

    .line 129
    const v2, 0x7f1000ab

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mMessageSender:Landroid/widget/TextView;

    .line 130
    const v2, 0x7f1000ac

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSenderDetails:Landroid/widget/TextView;

    .line 131
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mMessageList:Landroid/widget/ListView;

    .line 132
    const v2, 0x7f100059

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mBottomPanel:Landroid/view/View;

    .line 133
    const v2, 0x7f100062

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextEditor:Landroid/widget/EditText;

    .line 134
    const v2, 0x7f100064

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextCounter:Landroid/widget/TextView;

    .line 135
    const v2, 0x7f100063

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSendButton:Landroid/widget/Button;

    .line 137
    new-instance v2, Lcom/android/mms/ui/NewMessagePopupListAdapter;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/NewMessagePopupListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mAdapter:Lcom/android/mms/ui/NewMessagePopupListAdapter;

    .line 138
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mAdapter:Lcom/android/mms/ui/NewMessagePopupListAdapter;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mButtonDelete:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/mms/ui/NewMessagePopupActivity$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/NewMessagePopupActivity$1;-><init>(Lcom/android/mms/ui/NewMessagePopupActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mButtonDismiss:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/mms/ui/NewMessagePopupActivity$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/NewMessagePopupActivity$2;-><init>(Lcom/android/mms/ui/NewMessagePopupActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSendButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/mms/ui/NewMessagePopupActivity$3;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/NewMessagePopupActivity$3;-><init>(Lcom/android/mms/ui/NewMessagePopupActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSenderPanel:Landroid/view/View;

    new-instance v3, Lcom/android/mms/ui/NewMessagePopupActivity$4;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/NewMessagePopupActivity$4;-><init>(Lcom/android/mms/ui/NewMessagePopupActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 166
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextEditor:Landroid/widget/EditText;

    new-instance v3, Lcom/android/mms/ui/NewMessagePopupActivity$5;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/NewMessagePopupActivity$5;-><init>(Lcom/android/mms/ui/NewMessagePopupActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 182
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->setFinishOnTouchOutside(Z)V

    .line 184
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 186
    .local v1, wl:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x30

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 187
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 188
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 189
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 190
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->processMessage(Landroid/content/Intent;)V

    .line 191
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 196
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/NewMessagePopupActivity;->mInstance:Lcom/android/mms/ui/NewMessagePopupActivity;

    .line 197
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->gotoConversation()V

    .line 209
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/NewMessagePopupActivity;->setIntent(Landroid/content/Intent;)V

    .line 203
    invoke-direct {p0, p1}, Lcom/android/mms/ui/NewMessagePopupActivity;->processMessage(Landroid/content/Intent;)V

    .line 204
    return-void
.end method

.method public onPreMeasure(Lcom/android/mms/ui/SizeAwareLinearLayout;II)V
    .locals 9
    .parameter "view"
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v8, -0x1

    const/high16 v7, -0x8000

    .line 388
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-eq v4, v7, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v4, p2, p3}, Landroid/view/View;->measure(II)V

    .line 392
    iget-object v4, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getLineCount()I

    move-result v4

    const/4 v5, 0x2

    if-gt v4, v5, :cond_2

    .line 393
    iget-object v4, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextCounter:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mMessageList:Landroid/widget/ListView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    const v0, 0x186a0

    .line 402
    .local v0, BIG_HEIGHT:I
    const v4, 0x186a0

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p1, p2, v4}, Lcom/android/mms/ui/SizeAwareLinearLayout;->measure(II)V

    .line 403
    invoke-virtual {p1}, Lcom/android/mms/ui/SizeAwareLinearLayout;->getMeasuredHeight()I

    move-result v3

    .line 404
    .local v3, totalHeight:I
    iget-object v4, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mMessageList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v1

    .line 406
    .local v1, listHeight:I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 407
    .local v2, maxHeight:I
    if-lt v3, v2, :cond_0

    .line 408
    iget-object v4, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mMessageList:Landroid/widget/ListView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    sub-int v6, v3, v2

    sub-int v6, v1, v6

    invoke-direct {v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 395
    .end local v0           #BIG_HEIGHT:I
    .end local v1           #listHeight:I
    .end local v2           #maxHeight:I
    .end local v3           #totalHeight:I
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextCounter:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 422
    iget-object v1, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSendButton:Landroid/widget/Button;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 423
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextCounter:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->getMessageStats(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/NewMessagePopupActivity;->markAsReadAsync(Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;)V

    .line 427
    :cond_0
    return-void

    .line 422
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
