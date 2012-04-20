.class public abstract Lcom/android/mms/ui/MessageEditableActivityBase;
.super Landroid/app/Activity;
.source "MessageEditableActivityBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
.implements Lcom/android/mms/ui/SizeAwareLinearLayout$OnMeasureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageEditableActivityBase$DiscardDraftListener;
    }
.end annotation


# instance fields
.field protected mAllowAnimation:Z

.field protected mAttachmentPanel:Landroid/view/View;

.field protected mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

.field protected mAttachmentView:Lcom/android/mms/ui/AttachmentView;

.field protected mBottomPanel:Landroid/view/View;

.field protected mContactPanel:Landroid/view/View;

.field protected mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

.field protected mConversation:Lcom/android/mms/data/Conversation;

.field private mExitOnSent:Z

.field protected mHandler:Landroid/os/Handler;

.field protected mHistoryView:Landroid/view/View;

.field protected mHomeButton:Landroid/widget/Button;

.field protected mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsLandscape:Z

.field protected mIsSoftInputEnabled:Z

.field private mMaxPendingMessagesReachedToast:Landroid/widget/Toast;

.field protected mMessageContentPanel:Landroid/view/View;

.field protected mMessageContentPanelMinHeight:I

.field private mRequestedShowSoftKeyboard:Z

.field protected mSendButton:Landroid/widget/Button;

.field private mSendingMessage:Z

.field protected mSharedPrefs:Landroid/content/SharedPreferences;

.field protected mShowAttachmentPanelButton:Landroid/widget/Button;

.field protected mSignature:Ljava/lang/String;

.field protected mSoftKeyboardMinHeight:I

.field protected mSubjectDivider:Landroid/view/View;

.field private final mSubjectEditorWatcher:Landroid/text/TextWatcher;

.field private final mSubjectKeyListener:Landroid/view/View$OnKeyListener;

.field protected mSubjectTextEditor:Landroid/widget/EditText;

.field protected mTextCounter:Landroid/widget/TextView;

.field protected mTextEditor:Landroid/widget/EditText;

.field protected final mTextEditorWatcher:Landroid/text/TextWatcher;

.field protected mTimedMsgIndicator:Landroid/widget/Button;

.field protected mToastForDraftSave:Z

.field private mUpdateContactTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mWaitingForSubActivity:Z

.field protected mWorkingMessage:Lcom/android/mms/data/WorkingMessage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 126
    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSignature:Ljava/lang/String;

    .line 130
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsSoftInputEnabled:Z

    .line 140
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mRequestedShowSoftKeyboard:Z

    .line 141
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAllowAnimation:Z

    .line 501
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$9;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditorWatcher:Landroid/text/TextWatcher;

    .line 723
    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMaxPendingMessagesReachedToast:Landroid/widget/Toast;

    .line 1001
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$17;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$17;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectKeyListener:Landroid/view/View$OnKeyListener;

    .line 1018
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$18;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$18;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageEditableActivityBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateCounter()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageEditableActivityBase;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->sendMessage(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageEditableActivityBase;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->toastConvertInfo(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessageEditableActivityBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->removeChenghu()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageEditableActivityBase;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateCounter(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessageEditableActivityBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mExitOnSent:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/mms/ui/MessageEditableActivityBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendingMessage:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessageEditableActivityBase;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMaxPendingMessagesReachedToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/mms/ui/MessageEditableActivityBase;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMaxPendingMessagesReachedToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessageEditableActivityBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->resetMessage()V

    return-void
.end method

.method private allowAnimation()Z
    .locals 7

    .prologue
    const/high16 v6, 0x3f00

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1480
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 1481
    const/4 v0, 0x0

    .line 1484
    :try_start_0
    invoke-interface {v3}, Landroid/view/IWindowManager;->getAnimationScales()[F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 1487
    :goto_0
    if-eqz v3, :cond_3

    .line 1488
    array-length v0, v3

    if-lt v0, v2, :cond_2

    .line 1489
    aget v0, v3, v1

    add-float/2addr v0, v6

    float-to-int v0, v0

    rem-int/lit8 v0, v0, 0xa

    .line 1491
    :goto_1
    array-length v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 1492
    aget v3, v3, v2

    add-float/2addr v3, v6

    float-to-int v3, v3

    and-int/lit8 v3, v3, 0x7

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    .line 1495
    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 1485
    :catch_0
    move-exception v3

    move-object v3, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private appendSignature()V
    .locals 4

    .prologue
    .line 523
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "pref_key_edit_signature"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSignature:Ljava/lang/String;

    .line 525
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 526
    .local v0, textLength:I
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSignature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 528
    return-void
.end method

.method private cancelUpdateContactNames()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mUpdateContactTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mUpdateContactTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mUpdateContactTask:Landroid/os/AsyncTask;

    .line 219
    :cond_0
    return-void
.end method

.method private getBody(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v6, 0x0

    .line 335
    if-nez p1, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-object v6

    .line 338
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 339
    .local v5, urlStr:Ljava/lang/String;
    const-string v7, "?"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 342
    const/16 v7, 0x3f

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 343
    const-string v7, "&"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, params:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 345
    .local v3, p:Ljava/lang/String;
    const-string v7, "body="

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 347
    const/4 v7, 0x5

    :try_start_0
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 348
    :catch_0
    move-exception v7

    .line 344
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private handleSendIntent(Landroid/content/Intent;)Z
    .locals 19
    .parameter "intent"

    .prologue
    .line 382
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 383
    .local v11, extras:Landroid/os/Bundle;
    if-nez v11, :cond_0

    .line 384
    const/4 v2, 0x0

    .line 460
    :goto_0
    return v2

    .line 387
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    .line 388
    .local v6, mimeType:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 389
    .local v9, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 393
    invoke-static/range {p0 .. p0}, Lcom/android/mms/model/ContactParser;->getContactParser(Landroid/content/Context;)Lcom/android/mms/model/ContactParser;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/mms/model/ContactParser;->getContactFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v14

    .line 394
    .local v14, message:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v14}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 396
    const/4 v2, 0x1

    goto :goto_0

    .line 399
    :cond_1
    const/4 v12, 0x0

    .line 400
    .local v12, flag:Z
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 401
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/net/Uri;

    .line 402
    .local v16, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v6, v0, v3}, Lcom/android/mms/ui/AttachmentProcessor;->addAttachment(Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 403
    const/4 v12, 0x1

    .line 405
    .end local v16           #uri:Landroid/net/Uri;
    :cond_2
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 407
    const/4 v12, 0x1

    .line 409
    :cond_3
    if-eqz v12, :cond_7

    .line 410
    const/4 v2, 0x1

    goto :goto_0

    .line 412
    .end local v12           #flag:Z
    .end local v14           #message:Ljava/lang/String;
    :cond_4
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v15

    .line 415
    .local v15, slideShow:Lcom/android/mms/model/SlideshowModel;
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 416
    .local v5, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v10

    .line 417
    .local v10, currentSlideCount:I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 418
    .local v13, importCount:I
    add-int v2, v13, v10

    const/16 v3, 0xa

    if-le v2, v3, :cond_5

    .line 419
    rsub-int/lit8 v2, v10, 0xa

    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 421
    const v2, 0x7f0a0064

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v17, 0x0

    const/16 v18, 0xa

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v3, v17

    const/16 v17, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v3, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/ui/MessageEditableActivityBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 432
    :cond_5
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0065

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0066

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 437
    .local v8, dialog:Landroid/app/AlertDialog;
    new-instance v7, Lcom/android/mms/ui/MessageEditableActivityBase$7;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v8}, Lcom/android/mms/ui/MessageEditableActivityBase$7;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;Landroid/app/AlertDialog;)V

    .line 443
    .local v7, showProgress:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHandler:Landroid/os/Handler;

    const-wide/16 v17, 0x3e8

    move-wide/from16 v0, v17

    invoke-virtual {v2, v7, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 445
    move v4, v13

    .line 446
    .local v4, numberToImport:I
    new-instance v17, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/MessageEditableActivityBase$8;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/MessageEditableActivityBase$8;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/Runnable;Landroid/app/AlertDialog;)V

    const-string v3, "addAttachment"

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->start()V

    .line 457
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 416
    .end local v4           #numberToImport:I
    .end local v7           #showProgress:Ljava/lang/Runnable;
    .end local v8           #dialog:Landroid/app/AlertDialog;
    .end local v10           #currentSlideCount:I
    .end local v13           #importCount:I
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 460
    .end local v5           #uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v15           #slideShow:Lcom/android/mms/model/SlideshowModel;
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private handleSendToIntent(Landroid/content/Intent;)Z
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 356
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 357
    .local v1, extras:Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 378
    :cond_0
    :goto_0
    return v5

    .line 361
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 362
    .local v3, mimeType:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.SENDTO"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 364
    const/4 v2, 0x0

    .line 365
    .local v2, flag:Z
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 366
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 367
    .local v4, uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-virtual {v6, v3, v4, v5}, Lcom/android/mms/ui/AttachmentProcessor;->addAttachment(Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 368
    const/4 v2, 0x1

    .line 370
    .end local v4           #uri:Landroid/net/Uri;
    :cond_2
    const-string v6, "android.intent.extra.TEXT"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 371
    iget-object v6, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v7, "android.intent.extra.TEXT"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 372
    const/4 v2, 0x1

    .line 374
    :cond_3
    if-eqz v2, :cond_0

    .line 375
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private hasRecipientsToRevise()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1139
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "nickname_revised_numbers"

    const-string v4, ""

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1140
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1141
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v4

    .line 1143
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    move v1, v2

    .line 1144
    :goto_0
    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1145
    invoke-virtual {v5, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1146
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1147
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 1148
    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 1149
    if-eqz v0, :cond_1

    .line 1150
    invoke-virtual {v0, v3, v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 1151
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v2, v3

    .line 1157
    :cond_0
    return v2

    .line 1144
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private isSignatureRequired()Z
    .locals 3

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_append_signature"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private removeChenghu()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1121
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    move v1, v0

    .line 1123
    :goto_0
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1124
    invoke-interface {v2, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    .line 1125
    const v4, 0xffff

    if-ne v3, v4, :cond_0

    .line 1126
    add-int/lit8 v1, v0, 0x1

    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1127
    const/4 v1, 0x1

    .line 1123
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1130
    :cond_1
    if-eqz v1, :cond_2

    .line 1131
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1132
    const v1, 0x7f0a0193

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1133
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1134
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1136
    :cond_2
    return-void
.end method

.method private resetMessage()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1438
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1439
    const-string v0, "MessageEditableActivityBase"

    const-string v1, "resetMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/AttachmentView;->setVisibility(I)V

    .line 1444
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1447
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSubjectEditor(Z)V

    .line 1450
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1456
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1459
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/method/TextKeyListener;->clear(Landroid/text/Editable;)V

    .line 1461
    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 1462
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 1464
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->drawBottomPanel()V

    .line 1467
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateSendButtonState()V

    .line 1470
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1472
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 1473
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->hideSoftKeyboard()V

    .line 1476
    :cond_1
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendingMessage:Z

    .line 1477
    return-void
.end method

.method private sendMessage(Z)V
    .locals 7
    .parameter "bCheckEcmMode"

    .prologue
    const/4 v6, 0x1

    .line 622
    if-eqz p1, :cond_1

    .line 624
    const-string v3, "ril.cdma.inecmmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 625
    .local v1, inEcm:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 627
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    .end local v1           #inEcm:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 631
    .restart local v1       #inEcm:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 633
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "MessageEditableActivityBase"

    const-string v4, "Cannot find EmergencyCallbackModeExitDialog"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 638
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #inEcm:Ljava/lang/String;
    :cond_1
    iget-boolean v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendingMessage:Z

    if-nez v3, :cond_0

    .line 639
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Ljava/lang/String;

    move-result-object v2

    .line 640
    .local v2, workingRecipients:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, v2}, Lcom/android/mms/data/WorkingMessage;->send(Ljava/lang/String;)V

    .line 641
    iput-boolean v6, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendingMessage:Z

    goto :goto_0
.end method

.method private toastConvertInfo(Z)V
    .locals 2
    .parameter

    .prologue
    .line 683
    if-eqz p1, :cond_0

    const v0, 0x7f0a005d

    .line 685
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 686
    return-void

    .line 683
    :cond_0
    const v0, 0x7f0a005e

    goto :goto_0
.end method

.method private updateContactNames()V
    .locals 2

    .prologue
    .line 187
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$1;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mUpdateContactTask:Landroid/os/AsyncTask;

    .line 211
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mUpdateContactTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 212
    return-void
.end method

.method private updateCounter()V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateCounter(Z)V

    .line 599
    return-void
.end method

.method private updateCounter(Z)V
    .locals 5
    .parameter "isMms"

    .prologue
    const/4 v4, 0x0

    .line 602
    if-eqz p1, :cond_0

    .line 603
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextCounter:Landroid/widget/TextView;

    const v4, 0x7f0a0045

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 611
    :goto_0
    return-void

    .line 605
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v1

    .line 606
    .local v1, params:[I
    aget v0, v1, v4

    .line 607
    .local v0, msgCount:I
    const/4 v3, 0x2

    aget v2, v1, v3

    .line 609
    .local v2, remainingInCurrentMessage:I
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextCounter:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/mms/ui/MessageUtils;->getMessageStats(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateNicknameRevisedNumbers()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1161
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "nickname_revised_numbers"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1162
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1163
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v3

    .line 1165
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    move v1, v2

    .line 1166
    :goto_0
    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1167
    invoke-virtual {v4, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1168
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1169
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 1170
    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 1171
    if-eqz v0, :cond_0

    .line 1172
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 1173
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1166
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1177
    :cond_1
    const-string v0, "\n"

    invoke-virtual {v3}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1178
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1179
    const-string v2, "nickname_revised_numbers"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1180
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1181
    return-void
.end method


# virtual methods
.method public cancelTiming()V
    .locals 3

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1515
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setTimeToSend(J)V

    .line 1516
    return-void
.end method

.method protected checkAndSendMessage(Z)V
    .locals 3
    .parameter

    .prologue
    .line 646
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isPrivacyModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    const v0, 0x7f0a019a

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 665
    :goto_0
    return-void

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSignature:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSignature:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a017c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a017d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0077

    new-instance v2, Lcom/android/mms/ui/MessageEditableActivityBase$10;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase$10;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0078

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 663
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->sendMessage(Z)V

    goto :goto_0
.end method

.method protected disableAttachmentPanel()V
    .locals 2

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentPanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1338
    return-void
.end method

.method protected drawBottomPanel()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 880
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getTimeToSend()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 881
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 885
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 886
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 913
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateCounter()V

    .line 914
    return-void

    .line 883
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 888
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 889
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 890
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 895
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 897
    if-eqz v0, :cond_4

    .line 898
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 906
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 892
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    const v1, 0x7f0a0047

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_2

    .line 909
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public drawTopPanel()V
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSubjectEditor(Z)V

    .line 877
    return-void
.end method

.method protected enableAttachmentPanel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1320
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getEditMessageFocus()Landroid/widget/EditText;

    .line 1321
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentProcessor;->gotoAttachmentPanel(Z)V

    .line 1322
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1323
    return-void
.end method

.method protected exit()V
    .locals 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 848
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->postExit()V

    .line 859
    :goto_0
    return-void

    .line 852
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->willDiscardDraft()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 853
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$DiscardDraftListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase$DiscardDraftListener;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;Lcom/android/mms/ui/MessageEditableActivityBase$1;)V

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->showDiscardDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 857
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mToastForDraftSave:Z

    .line 858
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->postExit()V

    goto :goto_0
.end method

.method public getAttachmentView()Lcom/android/mms/ui/AttachmentView;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    return-object v0
.end method

.method protected abstract getContentViewResId()I
.end method

.method public getConversation()Lcom/android/mms/data/Conversation;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method public getEditMessageFocus()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    .line 1332
    :goto_0
    return-object v0

    .line 1328
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1329
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    goto :goto_0

    .line 1331
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1332
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getHostedActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 751
    return-object p0
.end method

.method public getTextEditor()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method public getWorkingMessage()Lcom/android/mms/data/WorkingMessage;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    return-object v0
.end method

.method protected handleForwardedMessage()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1075
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1079
    const-string v0, "forwarded_message"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1096
    :goto_0
    return v0

    .line 1083
    :cond_0
    const-string v0, "msg_uri"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1085
    const-string v3, "Mms:app"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1086
    const-string v3, "MessageEditableActivityBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handle forwarded message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_1
    if-eqz v0, :cond_2

    .line 1090
    invoke-static {p0, v0}, Lcom/android/mms/data/WorkingMessage;->load(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 1091
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v3, "subject"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1096
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1093
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v1, "sms_body"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected handleIntent(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 298
    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 300
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isSignatureRequired()Z

    move-result v1

    .line 301
    .local v1, needSignature:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->handleForwardedMessage()Z

    move-result v3

    if-nez v3, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->loadDraft()V

    .line 303
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 304
    const/4 v1, 0x0

    .line 309
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessageEditableActivityBase;->getBody(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, body:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 311
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, v0}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 314
    :cond_1
    const-string v3, "sms_body"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 316
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, v0}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 319
    :cond_2
    const-string v3, "subject"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, subject:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 321
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, v2, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 323
    :cond_3
    const-string v3, "exit_on_sent"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mExitOnSent:Z

    .line 326
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v4, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 328
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->handleSendIntent(Landroid/content/Intent;)Z

    .line 329
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->handleSendToIntent(Landroid/content/Intent;)Z

    .line 331
    return v1
.end method

.method protected handleSignature(Z)V
    .locals 0
    .parameter "needSignature"

    .prologue
    .line 467
    if-eqz p1, :cond_0

    .line 471
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->appendSignature()V

    .line 473
    :cond_0
    return-void
.end method

.method protected hideSoftKeyboard()V
    .locals 4

    .prologue
    .line 1369
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

    invoke-virtual {v1}, Lcom/android/mms/ui/SizeAwareLinearLayout;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1370
    .local v0, focus:Landroid/view/View;
    if-nez v0, :cond_0

    .line 1371
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    .line 1373
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1374
    return-void
.end method

.method protected initResourceRefs()V
    .locals 3

    .prologue
    .line 228
    const v1, 0x7f100095

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContactPanel:Landroid/view/View;

    .line 229
    const v1, 0x7f100081

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHistoryView:Landroid/view/View;

    .line 230
    const v1, 0x7f100059

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mBottomPanel:Landroid/view/View;

    .line 231
    const v1, 0x7f10004e

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentPanel:Landroid/view/View;

    .line 233
    const v1, 0x7f100062

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    .line 234
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 235
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    new-instance v2, Lcom/android/mms/ui/MessageEditableActivityBase$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$2;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 251
    const v1, 0x7f100064

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextCounter:Landroid/widget/TextView;

    .line 252
    const v1, 0x7f100063

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendButton:Landroid/widget/Button;

    .line 253
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    const v1, 0x7f10005e

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/AttachmentView;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    .line 255
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    new-instance v2, Lcom/android/mms/ui/MessageEditableActivityBase$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$3;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/AttachmentView;->setHandler(Landroid/os/Handler;)V

    .line 261
    const v1, 0x7f10005a

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mShowAttachmentPanelButton:Landroid/widget/Button;

    .line 262
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mShowAttachmentPanelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    const v1, 0x7f10005c

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    .line 264
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    new-instance v2, Lcom/android/mms/ui/MessageEditableActivityBase$4;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$4;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    const v1, 0x7f100061

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 271
    .local v0, focuser:Landroid/view/View;
    new-instance v1, Lcom/android/mms/ui/MessageEditableActivityBase$5;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$5;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    const v1, 0x7f10005b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMessageContentPanel:Landroid/view/View;

    .line 281
    const v1, 0x7f100097

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHomeButton:Landroid/widget/Button;

    .line 282
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHomeButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHomeButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/mms/ui/MessageEditableActivityBase$6;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$6;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    :cond_0
    return-void
.end method

.method protected initialize()V
    .locals 4

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->handleIntent(Landroid/content/Intent;)Z

    move-result v1

    .line 477
    .local v1, needSignature:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateSendButtonState()V

    .line 478
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->drawTopPanel()V

    .line 479
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->drawBottomPanel()V

    .line 480
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/AttachmentView;->update(Lcom/android/mms/data/WorkingMessage;)V

    .line 481
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->handleSignature(Z)V

    .line 483
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 484
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsLandscape:Z

    .line 485
    return-void

    .line 484
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method insertChenghu()V
    .locals 3

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1102
    const v1, 0x7f0a0193

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1103
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1104
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1118
    :goto_0
    return-void

    .line 1108
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 1111
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1112
    const v2, 0xffff

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1113
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->startNicknamePicker(Z)V

    .line 1117
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSoftKeyboard()Z

    goto :goto_0
.end method

.method protected isAttachmentPanelEnabled()Z
    .locals 1

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentPanel:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isVisible(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public abstract isPreparedForSending()Z
.end method

.method protected isSubjectEditorVisible()Z
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isVisible(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 1312
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadDraft()V
    .locals 2

    .prologue
    .line 531
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    const-string v0, "MessageEditableActivityBase"

    const-string v1, "loadDraft: call WorkingMessage.loadDraft"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-static {p0, v0}, Lcom/android/mms/data/WorkingMessage;->loadDraft(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 536
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateCounter()V

    .line 537
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 550
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 555
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWaitingForSubActivity:Z

    .line 557
    iget-object v9, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->isFakeMmsForDraft()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 560
    iget-object v9, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft()V

    .line 563
    :cond_0
    const/4 v9, 0x1

    if-ne p1, v9, :cond_2

    .line 564
    const-string v9, "exit_ecm_result"

    const/4 v10, 0x0

    invoke-virtual {p3, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 565
    .local v5, outOfEmergencyMode:Z
    if-eqz v5, :cond_1

    .line 566
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/mms/ui/MessageEditableActivityBase;->sendMessage(Z)V

    .line 593
    .end local v5           #outOfEmergencyMode:Z
    :cond_1
    :goto_0
    return-void

    .line 568
    :cond_2
    const/4 v9, 0x3

    if-ne p1, v9, :cond_3

    if-eqz p3, :cond_3

    .line 569
    const-string v9, "numbers"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 570
    .local v6, phoneNumbers:[Ljava/lang/String;
    const-string v9, "names"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 572
    .local v3, nicknames:[Ljava/lang/String;
    if-eqz v6, :cond_1

    if-eqz v3, :cond_1

    array-length v9, v6

    array-length v10, v3

    if-ne v9, v10, :cond_1

    .line 574
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v9, v6

    if-ge v1, v9, :cond_1

    .line 575
    aget-object v4, v6, v1

    .line 576
    .local v4, number:Ljava/lang/String;
    aget-object v2, v3, v1

    .line 577
    .local v2, nickname:Ljava/lang/String;
    const/4 v9, 0x0

    invoke-static {v4, v9}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 578
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v0, v2}, Lcom/android/mms/data/Contact;->setNickname(Ljava/lang/String;)V

    .line 574
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 581
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    .end local v1           #i:I
    .end local v2           #nickname:Ljava/lang/String;
    .end local v3           #nicknames:[Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    .end local v6           #phoneNumbers:[Ljava/lang/String;
    :cond_3
    const/4 v9, 0x4

    if-ne p1, v9, :cond_4

    .line 582
    iget-object v9, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setClickable(Z)V

    .line 583
    const/4 v9, -0x1

    if-ne p2, v9, :cond_1

    .line 584
    sget-object v9, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TIME:Ljava/lang/String;

    const-wide/16 v10, -0x1

    invoke-virtual {p3, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 585
    .local v7, time:J
    const-wide/16 v9, -0x1

    cmp-long v9, v7, v9

    if-eqz v9, :cond_1

    .line 586
    iget-object v9, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 587
    iget-object v9, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v9, v7, v8}, Lcom/android/mms/data/WorkingMessage;->setTimeToSend(J)V

    goto :goto_0

    .line 591
    .end local v7           #time:J
    :cond_4
    iget-object v9, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-virtual {v9, p1, p2, p3}, Lcom/android/mms/ui/AttachmentProcessor;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAttachmentChanged()V
    .locals 1

    .prologue
    .line 692
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$12;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 699
    return-void
.end method

.method public onAttachmentError(I)V
    .locals 1
    .parameter "error"

    .prologue
    .line 741
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$16;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase$16;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;I)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 747
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    :goto_0
    return-void

    .line 833
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isAttachmentPanelEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 834
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentProcessor;->isOnAttachmentPanel()Z

    move-result v0

    if-nez v0, :cond_1

    .line 835
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentProcessor;->gotoAttachmentPanel(Z)V

    goto :goto_0

    .line 837
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->disableAttachmentPanel()V

    goto :goto_0

    .line 840
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->exit()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 755
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 757
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->sendMessage()V

    goto :goto_0

    .line 762
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isAttachmentPanelEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 763
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->enableAttachmentPanel()V

    .line 764
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->hideSoftKeyboard()V

    goto :goto_0

    .line 766
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSoftKeyboard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 767
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->disableAttachmentPanel()V

    goto :goto_0

    .line 755
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10005a -> :sswitch_1
        0x7f100063 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 489
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 491
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 492
    .local v0, isLandscape:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsLandscape:Z

    if-eq v1, v0, :cond_0

    .line 493
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsLandscape:Z

    .line 497
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/AttachmentView;->update(Lcom/android/mms/data/WorkingMessage;)V

    .line 499
    :cond_0
    return-void

    .line 491
    .end local v0           #isLandscape:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onContactsUpdated()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->loadFontSizeConfiguration(Landroid/content/Context;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSoftKeyboardMinHeight:I

    .line 159
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMessageContentPanelMinHeight:I

    .line 162
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getContentViewResId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SizeAwareLinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

    .line 164
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/SizeAwareLinearLayout;->setOnMeasureListener(Lcom/android/mms/ui/SizeAwareLinearLayout$OnMeasureListener;)V

    .line 165
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->setContentView(Landroid/view/View;)V

    .line 167
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHandler:Landroid/os/Handler;

    .line 168
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 169
    new-instance v0, Lcom/android/mms/ui/AttachmentProcessor;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/AttachmentProcessor;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    .line 170
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 173
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->initResourceRefs()V

    .line 174
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 919
    const/4 v0, 0x1

    return v0
.end method

.method public onMaxPendingMessagesReached()V
    .locals 1

    .prologue
    .line 726
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->saveDraft(Z)V

    .line 727
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$15;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$15;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 737
    return-void
.end method

.method public onMessageSent()V
    .locals 1

    .prologue
    .line 712
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$14;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$14;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 721
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 940
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 963
    :goto_0
    :pswitch_0
    return v2

    .line 942
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isSubjectEditorVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 943
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSubjectEditor(Z)V

    .line 944
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 945
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 947
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSubjectEditor(Z)V

    .line 948
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 949
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 953
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 954
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->postExit()V

    goto :goto_0

    .line 957
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 958
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_0

    .line 940
    :pswitch_data_0
    .packed-switch 0x7f1000e0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreMeasure(Lcom/android/mms/ui/SizeAwareLinearLayout;II)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 1229
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setMinHeight(I)V

    .line 1230
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1231
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v0, p2, v3}, Landroid/view/View;->measure(II)V

    .line 1232
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    if-gt v0, v7, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextCounter:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1237
    :cond_0
    iget v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMessageContentPanelMinHeight:I

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMessageContentPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1238
    if-lez v0, :cond_1

    .line 1239
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setMinHeight(I)V

    .line 1243
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/SizeAwareLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1244
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iget v4, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSoftKeyboardMinHeight:I

    if-lt v1, v4, :cond_7

    move v1, v2

    .line 1245
    :goto_0
    iget-boolean v4, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsSoftInputEnabled:Z

    if-eq v1, v4, :cond_2

    .line 1246
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->onSoftInputStateChange(Z)V

    .line 1248
    :cond_2
    if-eqz v1, :cond_3

    iget-boolean v4, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsSoftInputEnabled:Z

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isAttachmentPanelEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1249
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->disableAttachmentPanel()V

    .line 1252
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mShowAttachmentPanelButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isAttachmentPanelEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    const v4, 0x7f0200c0

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1254
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsSoftInputEnabled:Z

    .line 1256
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 1257
    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 1258
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v1, v5

    .line 1260
    iget-object v5, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentPanel:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageEditableActivityBase;->isVisible(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1261
    iget-object v5, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/AttachmentProcessor;->arrangeAttachmentPanel(I)V

    .line 1262
    iget-object v5, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentPanel:Landroid/view/View;

    invoke-virtual {v5, p2, v3}, Landroid/view/View;->measure(II)V

    .line 1263
    iget-object v5, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentPanel:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v1, v5

    .line 1272
    :goto_2
    const v5, 0x30b0004

    invoke-static {p0, v5}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1274
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageEditableActivityBase;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1275
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v1, v5

    .line 1278
    :cond_4
    const v5, 0x30b0005

    invoke-static {p0, v5}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1280
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isVisible(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1281
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v1, v0

    .line 1284
    :cond_5
    new-array v5, v7, [Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContactPanel:Landroid/view/View;

    aput-object v0, v5, v3

    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mBottomPanel:Landroid/view/View;

    aput-object v0, v5, v2

    move v0, v3

    .line 1285
    :goto_3
    array-length v2, v5

    if-ge v0, v2, :cond_b

    .line 1286
    aget-object v2, v5, v0

    .line 1287
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1288
    const/high16 v6, -0x8000

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, p2, v6}, Landroid/view/View;->measure(II)V

    .line 1289
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v1, v6, :cond_a

    .line 1290
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v1, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v3

    .line 1285
    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    move v1, v3

    .line 1244
    goto/16 :goto_0

    .line 1252
    :cond_8
    const v4, 0x7f0200bf

    goto/16 :goto_1

    .line 1265
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v1, v5

    goto :goto_2

    .line 1295
    :cond_a
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v9, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1298
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_4

    .line 1303
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHistoryView:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v1, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1306
    return-void
.end method

.method public onPreMessageSent()V
    .locals 1

    .prologue
    .line 703
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$13;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 708
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const v1, 0x7f1000e0

    const/4 v2, 0x1

    .line 924
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 925
    invoke-static {p1, v1, v2}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    move-result-object v0

    .line 926
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isSubjectEditorVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 927
    const v1, 0x7f0a003f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 934
    :goto_0
    const v0, 0x7f1000e3

    invoke-static {p1, v0, v2}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 935
    return v2

    .line 929
    :cond_0
    const v1, 0x7f0a0187

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 932
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onProtocolChanged(Z)V
    .locals 1
    .parameter "mms"

    .prologue
    .line 673
    new-instance v0, Lcom/android/mms/ui/MessageEditableActivityBase$11;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase$11;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;Z)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 680
    return-void
.end method

.method protected onResetMessageAnimationEnd()V
    .locals 0

    .prologue
    .line 1380
    return-void
.end method

.method protected onResetMessageAnimationStart()V
    .locals 0

    .prologue
    .line 1377
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 777
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 779
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    .line 788
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->unDiscard()V

    .line 790
    :cond_0
    return-void
.end method

.method protected onSoftInputStateChange(Z)V
    .locals 0
    .parameter "isSoftInputEnabled"

    .prologue
    .line 1309
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 179
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->allowAnimation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAllowAnimation:Z

    .line 180
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    .line 181
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateContactNames()V

    .line 182
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 794
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->saveDraft(Z)V

    .line 795
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->cancelUpdateContactNames()V

    .line 796
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 797
    return-void
.end method

.method public performShowSoftKeyboardRequest()V
    .locals 1

    .prologue
    .line 1345
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mRequestedShowSoftKeyboard:Z

    if-eqz v0, :cond_0

    .line 1346
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSoftKeyboard()Z

    .line 1347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mRequestedShowSoftKeyboard:Z

    .line 1349
    :cond_0
    return-void
.end method

.method protected postExit()V
    .locals 0

    .prologue
    .line 862
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->finish()V

    .line 863
    return-void
.end method

.method public requestShowSoftKeyboard()V
    .locals 1

    .prologue
    .line 1341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mRequestedShowSoftKeyboard:Z

    .line 1342
    return-void
.end method

.method public resetMessageWithAnimation()V
    .locals 3

    .prologue
    .line 1383
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->onResetMessageAnimationStart()V

    .line 1384
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1386
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAllowAnimation:Z

    if-nez v1, :cond_0

    .line 1387
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1389
    :cond_0
    new-instance v1, Lcom/android/mms/ui/MessageEditableActivityBase$19;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$19;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1434
    const v1, 0x7f10005b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1435
    return-void
.end method

.method protected saveDraft(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 803
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 825
    :cond_0
    :goto_0
    return-void

    .line 807
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWaitingForSubActivity:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 808
    const-string v0, "Mms:app"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 809
    const-string v0, "MessageEditableActivityBase"

    const-string v1, "saveDraft: not worth saving, discard WorkingMessage and bail"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    goto :goto_0

    .line 815
    :cond_3
    const-string v0, "Mms:app"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 816
    const-string v0, "MessageEditableActivityBase"

    const-string v1, "saveDraft: call WorkingMessage.saveDraft"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->saveDraft(Z)V

    .line 821
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mToastForDraftSave:Z

    if-eqz v0, :cond_0

    .line 822
    const v0, 0x7f0a0062

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public abstract sendMessage()V
.end method

.method public setTiming()V
    .locals 4

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getTimeToSend()J

    move-result-wide v0

    .line 1500
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    .line 1503
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 1505
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1506
    sget-object v3, Lcom/android/mms/ui/DateTimePickerActivity;->CONTENT_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1507
    sget-object v3, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TIME:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1508
    sget-object v0, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TITLE:Ljava/lang/String;

    const v1, 0x7f0a019f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1510
    const/4 v0, 0x4

    invoke-virtual {p0, v2, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1511
    return-void
.end method

.method public setWorkingMessage(Lcom/android/mms/data/WorkingMessage;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    return-void
.end method

.method protected showSoftKeyboard()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1353
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

    invoke-virtual {v2}, Lcom/android/mms/ui/SizeAwareLinearLayout;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1354
    .local v0, focus:Landroid/view/View;
    if-nez v0, :cond_0

    .line 1355
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1356
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1357
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    .line 1360
    :cond_0
    if-nez v0, :cond_1

    .line 1364
    :goto_0
    return v1

    .line 1363
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1364
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected showSubjectEditor(Z)V
    .locals 5
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 972
    const-string v0, "Mms:app"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    const-string v0, "MessageEditableActivityBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showSubjectEditor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    if-nez v0, :cond_2

    .line 979
    if-nez p1, :cond_1

    .line 999
    :goto_0
    return-void

    .line 982
    :cond_1
    const v0, 0x7f100018

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    .line 983
    const v0, 0x7f10005d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectDivider:Landroid/view/View;

    .line 986
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectKeyListener:Landroid/view/View$OnKeyListener;

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 988
    if-eqz p1, :cond_4

    .line 989
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 994
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 995
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 996
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectDivider:Landroid/view/View;

    if-eqz p1, :cond_6

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 998
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->invalidateOptionsMenu()V

    goto :goto_0

    .line 986
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 991
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_2

    :cond_5
    move v0, v2

    .line 995
    goto :goto_3

    :cond_6
    move v1, v2

    .line 996
    goto :goto_4
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 542
    if-ltz p2, :cond_0

    .line 543
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWaitingForSubActivity:Z

    .line 545
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 546
    return-void
.end method

.method public startNicknamePicker(Z)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0a0122

    .line 1184
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    .line 1185
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->hasRecipientsToRevise()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1186
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 1187
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1188
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 1189
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1190
    invoke-virtual {v2, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1191
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 1189
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1194
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1195
    const-string v1, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1196
    const-string v1, "numbers"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1197
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageEditableActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1198
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1199
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateNicknameRevisedNumbers()V

    .line 1213
    :cond_2
    :goto_1
    return-void

    .line 1201
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1202
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1203
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1204
    if-eqz p1, :cond_4

    .line 1205
    const v1, 0x7f0a0123

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1209
    :goto_2
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1210
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 1207
    :cond_4
    const v1, 0x7f0a0124

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method public updateSendButtonState()V
    .locals 2

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isPreparedForSending()Z

    move-result v0

    .line 615
    .local v0, preparedForSending:Z
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 616
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    .line 617
    return-void
.end method

.method protected abstract willDiscardDraft()Z
.end method
