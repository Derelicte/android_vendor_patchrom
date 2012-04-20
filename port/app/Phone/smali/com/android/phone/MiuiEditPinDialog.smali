.class public Lcom/android/phone/MiuiEditPinDialog;
.super Ljava/lang/Object;
.source "MiuiEditPinDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiEditPinDialog$3;,
        Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;,
        Lcom/android/phone/MiuiEditPinDialog$Mode;,
        Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;
    }
.end annotation


# instance fields
.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonPositive:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mEditTextConfirmNewPin:Landroid/widget/EditText;

.field private mEditTextNewPin:Landroid/widget/EditText;

.field private mEditTextOldPinPuk:Landroid/widget/EditText;

.field private mErrorMessage:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIccCard:Lcom/android/internal/telephony/IccCard;

.field private mListener:Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;

.field private mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mTextViewPrompt:Landroid/widget/TextView;

.field private mTextViewTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/MiuiEditPinDialog$Mode;Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;)V
    .locals 5
    .parameter "context"
    .parameter "mode"
    .parameter "listener"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    new-instance v1, Lcom/android/phone/MiuiEditPinDialog$2;

    invoke-direct {v1, p0}, Lcom/android/phone/MiuiEditPinDialog$2;-><init>(Lcom/android/phone/MiuiEditPinDialog;)V

    iput-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mHandler:Landroid/os/Handler;

    .line 84
    iput-object p1, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    .line 86
    iput-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/android/phone/MiuiEditPinDialog;->mListener:Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;

    .line 89
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040013

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, view:Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mDialog:Landroid/app/Dialog;

    .line 91
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 92
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/android/phone/MiuiEditPinDialog$1;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiEditPinDialog$1;-><init>(Lcom/android/phone/MiuiEditPinDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 101
    const v1, 0x7f070075

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mTextViewTitle:Landroid/widget/TextView;

    .line 102
    const v1, 0x7f070076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mTextViewPrompt:Landroid/widget/TextView;

    .line 103
    const v1, 0x7f070077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    .line 104
    const v1, 0x7f070078

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    .line 105
    const v1, 0x7f070079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    .line 106
    const v1, 0x7f07007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mButtonPositive:Landroid/widget/Button;

    .line 107
    const v1, 0x7f07007b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mButtonNegative:Landroid/widget/Button;

    .line 109
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 110
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 112
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 113
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 114
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 115
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 119
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 120
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 121
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 122
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 123
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 124
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 125
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 126
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 128
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 129
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 130
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 131
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 132
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiEditPinDialog;)Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mListener:Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiEditPinDialog;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiEditPinDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/phone/MiuiEditPinDialog;->process()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/phone/MiuiEditPinDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/MiuiEditPinDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/MiuiEditPinDialog;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiEditPinDialog;->dismiss(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/MiuiEditPinDialog;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiEditPinDialog;->showToast(I)V

    return-void
.end method

.method private dismiss(Z)V
    .locals 1
    .parameter "cancel"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mListener:Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;

    if-eqz v0, :cond_2

    .line 510
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mListener:Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/MiuiEditPinDialog$DialogClosedListener;->OnDialogClose(Lcom/android/phone/MiuiEditPinDialog;Z)V

    .line 512
    :cond_2
    return-void
.end method

.method private process()V
    .locals 11

    .prologue
    const v10, 0x7f0c0310

    const v9, 0x7f0c030f

    const v8, 0x7f0c030e

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 327
    iget-object v6, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, pinpuk:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, newPin:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, confirmNewPin:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/MiuiEditPinDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 332
    .local v1, msg:Landroid/os/Message;
    sget-object v6, Lcom/android/phone/MiuiEditPinDialog$3;->$SwitchMap$com$android$phone$MiuiEditPinDialog$Mode:[I

    iget-object v7, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    invoke-virtual {v7}, Lcom/android/phone/MiuiEditPinDialog$Mode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 412
    :goto_0
    return-void

    .line 334
    :pswitch_0
    invoke-static {v3, v5}, Lcom/android/phone/MiuiEditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 335
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0311

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 336
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 338
    :cond_0
    const/4 v6, 0x2

    iput v6, v1, Landroid/os/Message;->what:I

    .line 339
    iget-object v6, p0, Lcom/android/phone/MiuiEditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    iget-object v7, p0, Lcom/android/phone/MiuiEditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    :goto_1
    invoke-virtual {v6, v4, v3, v1}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    .line 343
    :pswitch_1
    invoke-static {v3, v5}, Lcom/android/phone/MiuiEditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 344
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 345
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 347
    :cond_2
    const/4 v6, 0x3

    iput v6, v1, Landroid/os/Message;->what:I

    .line 348
    iget-object v6, p0, Lcom/android/phone/MiuiEditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    iget-object v7, p0, Lcom/android/phone/MiuiEditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v7

    if-nez v7, :cond_3

    :goto_2
    invoke-virtual {v6, v4, v3, v1}, Lcom/android/internal/telephony/IccCard;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_2

    .line 352
    :pswitch_2
    invoke-static {v3, v5}, Lcom/android/phone/MiuiEditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_4

    .line 353
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0311

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 354
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 355
    :cond_4
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 356
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0c031d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 357
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 358
    :cond_5
    invoke-static {v2, v5}, Lcom/android/phone/MiuiEditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_6

    .line 359
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 360
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 362
    :cond_6
    const/4 v4, 0x4

    iput v4, v1, Landroid/os/Message;->what:I

    .line 363
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4, v3, v2, v1}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 367
    :pswitch_3
    invoke-static {v3, v5}, Lcom/android/phone/MiuiEditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_7

    .line 368
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 369
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 370
    :cond_7
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 371
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0c031c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 372
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 373
    :cond_8
    invoke-static {v2, v5}, Lcom/android/phone/MiuiEditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_9

    .line 374
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 375
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 377
    :cond_9
    const/4 v4, 0x5

    iput v4, v1, Landroid/os/Message;->what:I

    .line 378
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4, v3, v2, v1}, Lcom/android/internal/telephony/IccCard;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 382
    :pswitch_4
    invoke-static {v3, v4}, Lcom/android/phone/MiuiEditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_a

    .line 383
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0313

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 384
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 385
    :cond_a
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 386
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0c031d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 387
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 388
    :cond_b
    invoke-static {v2, v5}, Lcom/android/phone/MiuiEditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_c

    .line 389
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 390
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 392
    :cond_c
    const/4 v4, 0x6

    iput v4, v1, Landroid/os/Message;->what:I

    .line 393
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4, v3, v2, v1}, Lcom/android/internal/telephony/IccCard;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 397
    :pswitch_5
    invoke-static {v3, v4}, Lcom/android/phone/MiuiEditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_d

    .line 398
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0312

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 399
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 400
    :cond_d
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 401
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0c031c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 402
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 403
    :cond_e
    invoke-static {v2, v5}, Lcom/android/phone/MiuiEditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_f

    .line 404
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 405
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 407
    :cond_f
    const/4 v4, 0x7

    iput v4, v1, Landroid/os/Message;->what:I

    .line 408
    iget-object v4, p0, Lcom/android/phone/MiuiEditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4, v3, v2, v1}, Lcom/android/internal/telephony/IccCard;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private showToast(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 324
    return-void
.end method

.method private updateDialog()Z
    .locals 15

    .prologue
    .line 145
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->PIN1:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-eq v10, v11, :cond_0

    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-ne v10, v11, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->isPin1Locked()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 147
    const/4 v10, 0x0

    .line 286
    :goto_0
    return v10

    .line 148
    :cond_1
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->PIN2:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-ne v10, v11, :cond_8

    invoke-static {}, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->isPin2Locked()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 149
    sget-object v10, Lcom/android/phone/MiuiEditPinDialog$Mode;->PUK2:Lcom/android/phone/MiuiEditPinDialog$Mode;

    iput-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    .line 164
    :cond_2
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-eq v10, v11, :cond_3

    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->PIN1:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-eq v10, v11, :cond_3

    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->PUK1:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-ne v10, v11, :cond_10

    .line 165
    :cond_3
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-ne v10, v11, :cond_a

    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v10}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v10

    if-eqz v10, :cond_9

    const v9, 0x7f0c02e9

    .line 168
    .local v9, titleId:I
    :goto_1
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->PIN1:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-eq v10, v11, :cond_4

    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-ne v10, v11, :cond_c

    .line 170
    :cond_4
    const/4 v3, 0x0

    .line 171
    .local v3, pin1RetryCount:I
    if-lez v3, :cond_b

    .line 172
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f0c0342

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 173
    .local v6, prompt:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 174
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 176
    :cond_5
    const/4 v10, 0x1

    if-ne v3, v10, :cond_6

    .line 177
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v12, 0x7f0c0344

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 182
    :cond_6
    :goto_2
    const v2, 0x7f0c032a

    .line 183
    .local v2, oldPinPukHitId:I
    const v1, 0x7f0c0321

    .line 184
    .local v1, newPinHitId:I
    const v0, 0x7f0c02ca

    .line 244
    .end local v3           #pin1RetryCount:I
    .local v0, confirmNewPinHitId:I
    :goto_3
    sget-object v10, Lcom/android/phone/MiuiEditPinDialog$3;->$SwitchMap$com$android$phone$MiuiEditPinDialog$Mode:[I

    iget-object v11, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    invoke-virtual {v11}, Lcom/android/phone/MiuiEditPinDialog$Mode;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 260
    const v5, 0x7f0c0349

    .line 263
    .local v5, progressId:I
    :goto_4
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->FDN:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-eq v10, v11, :cond_7

    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-ne v10, v11, :cond_1c

    .line 264
    :cond_7
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setVisibility(I)V

    .line 265
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setVisibility(I)V

    .line 271
    :goto_5
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mTextViewTitle:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(I)V

    .line 272
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1d

    .line 273
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mTextViewPrompt:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mTextViewPrompt:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    :goto_6
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-virtual {v10, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 279
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 281
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 283
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mButtonPositive:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 285
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v11, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 286
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 150
    .end local v0           #confirmNewPinHitId:I
    .end local v1           #newPinHitId:I
    .end local v2           #oldPinPukHitId:I
    .end local v5           #progressId:I
    .end local v6           #prompt:Ljava/lang/String;
    .end local v9           #titleId:I
    :cond_8
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->FDN:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-ne v10, v11, :cond_2

    invoke-static {}, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->isPin2Locked()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 151
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x1010355

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0c02fd

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0c02fc

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x104000a

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 155
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 165
    :cond_9
    const v9, 0x7f0c02f4

    goto/16 :goto_1

    :cond_a
    const v9, 0x7f0c02b5

    goto/16 :goto_1

    .line 180
    .restart local v3       #pin1RetryCount:I
    .restart local v9       #titleId:I
    :cond_b
    iget-object v6, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    .restart local v6       #prompt:Ljava/lang/String;
    goto/16 :goto_2

    .line 187
    .end local v3           #pin1RetryCount:I
    .end local v6           #prompt:Ljava/lang/String;
    :cond_c
    const/4 v7, 0x0

    .line 188
    .local v7, puk1RetryCount:I
    if-lez v7, :cond_f

    .line 189
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f0c0342

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 190
    .restart local v6       #prompt:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 191
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 193
    :cond_d
    const/4 v10, 0x1

    if-ne v7, v10, :cond_e

    .line 194
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v12, 0x7f0c0355

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 199
    :cond_e
    :goto_7
    const v2, 0x7f0c0319

    .line 200
    .restart local v2       #oldPinPukHitId:I
    const v1, 0x7f0c0321

    .line 201
    .restart local v1       #newPinHitId:I
    const v0, 0x7f0c02ca

    .line 202
    .restart local v0       #confirmNewPinHitId:I
    goto/16 :goto_3

    .line 197
    .end local v0           #confirmNewPinHitId:I
    .end local v1           #newPinHitId:I
    .end local v2           #oldPinPukHitId:I
    .end local v6           #prompt:Ljava/lang/String;
    :cond_f
    iget-object v6, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    .restart local v6       #prompt:Ljava/lang/String;
    goto :goto_7

    .line 203
    .end local v6           #prompt:Ljava/lang/String;
    .end local v7           #puk1RetryCount:I
    .end local v9           #titleId:I
    :cond_10
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->FDN:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-eq v10, v11, :cond_11

    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->PIN2:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-eq v10, v11, :cond_11

    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->PUK2:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-ne v10, v11, :cond_1b

    .line 204
    :cond_11
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->FDN:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-ne v10, v11, :cond_15

    const v9, 0x7f0c02fd

    .line 205
    .restart local v9       #titleId:I
    :goto_8
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->PIN2:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-eq v10, v11, :cond_12

    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/MiuiEditPinDialog$Mode;->FDN:Lcom/android/phone/MiuiEditPinDialog$Mode;

    if-ne v10, v11, :cond_17

    .line 207
    :cond_12
    const/4 v4, 0x0

    .line 208
    .local v4, pin2RetryCount:I
    if-lez v4, :cond_16

    .line 209
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f0c0342

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 210
    .restart local v6       #prompt:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_13

    .line 211
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 213
    :cond_13
    const/4 v10, 0x1

    if-ne v4, v10, :cond_14

    .line 214
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v12, 0x7f0c0341

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 219
    :cond_14
    :goto_9
    const v2, 0x7f0c0329

    .line 220
    .restart local v2       #oldPinPukHitId:I
    const v1, 0x7f0c0320

    .line 221
    .restart local v1       #newPinHitId:I
    const v0, 0x7f0c02c9

    .line 222
    .restart local v0       #confirmNewPinHitId:I
    goto/16 :goto_3

    .line 204
    .end local v0           #confirmNewPinHitId:I
    .end local v1           #newPinHitId:I
    .end local v2           #oldPinPukHitId:I
    .end local v4           #pin2RetryCount:I
    .end local v6           #prompt:Ljava/lang/String;
    .end local v9           #titleId:I
    :cond_15
    const v9, 0x7f0c02b4

    goto :goto_8

    .line 217
    .restart local v4       #pin2RetryCount:I
    .restart local v9       #titleId:I
    :cond_16
    iget-object v6, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    .restart local v6       #prompt:Ljava/lang/String;
    goto :goto_9

    .line 224
    .end local v4           #pin2RetryCount:I
    .end local v6           #prompt:Ljava/lang/String;
    :cond_17
    const/4 v8, 0x0

    .line 225
    .local v8, puk2RetryCount:I
    if-lez v8, :cond_1a

    .line 226
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f0c0342

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 227
    .restart local v6       #prompt:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_18

    .line 228
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 230
    :cond_18
    const/4 v10, 0x1

    if-ne v8, v10, :cond_19

    .line 231
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/MiuiEditPinDialog;->mContext:Landroid/content/Context;

    const v12, 0x7f0c0355

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 236
    :cond_19
    :goto_a
    const v2, 0x7f0c0318

    .line 237
    .restart local v2       #oldPinPukHitId:I
    const v1, 0x7f0c0320

    .line 238
    .restart local v1       #newPinHitId:I
    const v0, 0x7f0c02c9

    .line 239
    .restart local v0       #confirmNewPinHitId:I
    goto/16 :goto_3

    .line 234
    .end local v0           #confirmNewPinHitId:I
    .end local v1           #newPinHitId:I
    .end local v2           #oldPinPukHitId:I
    .end local v6           #prompt:Ljava/lang/String;
    :cond_1a
    iget-object v6, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    .restart local v6       #prompt:Ljava/lang/String;
    goto :goto_a

    .line 241
    .end local v6           #prompt:Ljava/lang/String;
    .end local v8           #puk2RetryCount:I
    .end local v9           #titleId:I
    :cond_1b
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 246
    .restart local v0       #confirmNewPinHitId:I
    .restart local v1       #newPinHitId:I
    .restart local v2       #oldPinPukHitId:I
    .restart local v6       #prompt:Ljava/lang/String;
    .restart local v9       #titleId:I
    :pswitch_0
    const v5, 0x7f0c0348

    .line 247
    .restart local v5       #progressId:I
    goto/16 :goto_4

    .line 249
    .end local v5           #progressId:I
    :pswitch_1
    const v5, 0x7f0c0347

    .line 250
    .restart local v5       #progressId:I
    goto/16 :goto_4

    .line 252
    .end local v5           #progressId:I
    :pswitch_2
    const v5, 0x7f0c0346

    .line 253
    .restart local v5       #progressId:I
    goto/16 :goto_4

    .line 256
    .end local v5           #progressId:I
    :pswitch_3
    const v5, 0x7f0c0345

    .line 257
    .restart local v5       #progressId:I
    goto/16 :goto_4

    .line 267
    :cond_1c
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setVisibility(I)V

    .line 268
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_5

    .line 276
    :cond_1d
    iget-object v10, p0, Lcom/android/phone/MiuiEditPinDialog;->mTextViewPrompt:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method static validatePin(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "pin"
    .parameter "isPUK"

    .prologue
    const/16 v1, 0x8

    .line 312
    if-eqz p1, :cond_1

    move v0, v1

    .line 315
    .local v0, pinMinimum:I
    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 316
    :cond_0
    const/4 v1, 0x0

    .line 318
    :goto_1
    return v1

    .line 312
    .end local v0           #pinMinimum:I
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 318
    .restart local v0       #pinMinimum:I
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 538
    const/4 v0, 0x1

    .line 539
    .local v0, enablePositiveButton:Z
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 540
    const/4 v0, 0x0

    .line 542
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 545
    const/4 v0, 0x0

    .line 547
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 550
    const/4 v0, 0x0

    .line 553
    :cond_2
    iget-object v1, p0, Lcom/android/phone/MiuiEditPinDialog;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 554
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 530
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiEditPinDialog;->dismiss(Z)V

    .line 516
    return-void
.end method

.method public getMode()Lcom/android/phone/MiuiEditPinDialog$Mode;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mButtonNegative:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 521
    invoke-virtual {p0}, Lcom/android/phone/MiuiEditPinDialog;->dismiss()V

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mButtonPositive:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 534
    return-void
.end method

.method public setMode(Lcom/android/phone/MiuiEditPinDialog$Mode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/phone/MiuiEditPinDialog;->mMode:Lcom/android/phone/MiuiEditPinDialog$Mode;

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mErrorMessage:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 290
    invoke-static {}, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 292
    invoke-static {}, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->waitForInitialization()V

    .line 293
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/MiuiEditPinDialog;->updateDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/android/phone/MiuiEditPinDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MiuiEditPinDialog;->dismiss()V

    goto :goto_0
.end method
