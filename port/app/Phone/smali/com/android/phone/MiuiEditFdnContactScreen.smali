.class public Lcom/android/phone/MiuiEditFdnContactScreen;
.super Landroid/app/Activity;
.source "MiuiEditFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiEditFdnContactScreen$4;,
        Lcom/android/phone/MiuiEditFdnContactScreen$QueryHandler;,
        Lcom/android/phone/MiuiEditFdnContactScreen$Actions;
    }
.end annotation


# instance fields
.field private mAddContact:Z

.field private mCancelButton:Landroid/widget/Button;

.field private mClicked:Landroid/view/View$OnClickListener;

.field private mDeleteButton:Landroid/widget/Button;

.field private mName:Ljava/lang/String;

.field private mNameField:Landroid/widget/EditText;

.field private mNumber:Ljava/lang/String;

.field private mNumberField:Landroid/widget/EditText;

.field private mOkButton:Landroid/widget/Button;

.field mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

.field private mPin2Field:Landroid/widget/EditText;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 295
    new-instance v0, Lcom/android/phone/MiuiEditFdnContactScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiEditFdnContactScreen$1;-><init>(Lcom/android/phone/MiuiEditFdnContactScreen;)V

    iput-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    .line 320
    new-instance v0, Lcom/android/phone/MiuiEditFdnContactScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiEditFdnContactScreen$2;-><init>(Lcom/android/phone/MiuiEditFdnContactScreen;)V

    iput-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mTextWatcher:Landroid/text/TextWatcher;

    .line 350
    new-instance v0, Lcom/android/phone/MiuiEditFdnContactScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiEditFdnContactScreen$3;-><init>(Lcom/android/phone/MiuiEditFdnContactScreen;)V

    iput-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    .line 360
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiEditFdnContactScreen;Lcom/android/phone/MiuiEditFdnContactScreen$Actions;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiEditFdnContactScreen;->performActions(Lcom/android/phone/MiuiEditFdnContactScreen$Actions;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiEditFdnContactScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mAddContact:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiEditFdnContactScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/MiuiEditFdnContactScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/MiuiEditFdnContactScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/MiuiEditFdnContactScreen;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mDeleteButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/MiuiEditFdnContactScreen;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mOkButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/MiuiEditFdnContactScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/phone/MiuiEditFdnContactScreen;->dismissProgress()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/MiuiEditFdnContactScreen;Lcom/android/phone/MiuiEditFdnContactScreen$Actions;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/MiuiEditFdnContactScreen;->handleResult(Lcom/android/phone/MiuiEditFdnContactScreen$Actions;ZZ)V

    return-void
.end method

.method private dismissProgress()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 259
    :cond_0
    return-void
.end method

.method private displayProgress(Lcom/android/phone/MiuiEditFdnContactScreen$Actions;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 237
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 238
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 239
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 240
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 242
    :cond_0
    sget-object v0, Lcom/android/phone/MiuiEditFdnContactScreen$4;->$SwitchMap$com$android$phone$MiuiEditFdnContactScreen$Actions:[I

    invoke-virtual {p1}, Lcom/android/phone/MiuiEditFdnContactScreen$Actions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 252
    :goto_0
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 253
    return-void

    .line 244
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0c0134

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiEditFdnContactScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 247
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0c0137

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiEditFdnContactScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 250
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0c013a

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiEditFdnContactScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getContentURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 172
    const-string v0, "content://icc/fdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getNameFromTextField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNumberFromTextField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPin2FromTextField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleResult(Lcom/android/phone/MiuiEditFdnContactScreen$Actions;ZZ)V
    .locals 2
    .parameter "action"
    .parameter "success"
    .parameter "invalidNumber"

    .prologue
    .line 272
    if-eqz p2, :cond_0

    .line 274
    sget-object v0, Lcom/android/phone/MiuiEditFdnContactScreen$4;->$SwitchMap$com$android$phone$MiuiEditFdnContactScreen$Actions:[I

    invoke-virtual {p1}, Lcom/android/phone/MiuiEditFdnContactScreen$Actions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 285
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiEditFdnContactScreen;->finish()V

    .line 293
    :goto_1
    return-void

    .line 276
    :pswitch_0
    const v0, 0x7f0c0135

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiEditFdnContactScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiEditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 279
    :pswitch_1
    const v0, 0x7f0c0138

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiEditFdnContactScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiEditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 282
    :pswitch_2
    const v0, 0x7f0c013b

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiEditFdnContactScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiEditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 288
    :cond_0
    if-eqz p3, :cond_1

    .line 289
    invoke-virtual {p0}, Lcom/android/phone/MiuiEditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c013d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiEditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MiuiEditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c013c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiEditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 274
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isValidNumber(Ljava/lang/String;)Z
    .locals 5
    .parameter "number"

    .prologue
    .line 180
    const/4 v2, 0x1

    .line 181
    .local v2, valid:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 182
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 183
    .local v0, c:C
    const/16 v3, 0x2b

    if-eq v0, v3, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 184
    const/4 v2, 0x0

    .line 181
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    .end local v0           #c:C
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x14

    if-gt v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 393
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EditFdnContact] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return-void
.end method

.method private performActions(Lcom/android/phone/MiuiEditFdnContactScreen$Actions;)V
    .locals 12
    .parameter "action"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 191
    invoke-direct {p0}, Lcom/android/phone/MiuiEditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/MiuiEditFdnContactScreen;->isValidNumber(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 192
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/phone/MiuiEditFdnContactScreen;->handleResult(Lcom/android/phone/MiuiEditFdnContactScreen$Actions;ZZ)V

    .line 232
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/MiuiEditFdnContactScreen;->getPin2FromTextField()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/phone/MiuiEditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 196
    invoke-direct {p0, p1, v1, v1}, Lcom/android/phone/MiuiEditFdnContactScreen;->handleResult(Lcom/android/phone/MiuiEditFdnContactScreen$Actions;ZZ)V

    goto :goto_0

    .line 200
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiEditFdnContactScreen;->displayProgress(Lcom/android/phone/MiuiEditFdnContactScreen$Actions;)V

    .line 201
    invoke-direct {p0}, Lcom/android/phone/MiuiEditFdnContactScreen;->getContentURI()Landroid/net/Uri;

    move-result-object v3

    .line 202
    .local v3, uri:Landroid/net/Uri;
    new-instance v0, Lcom/android/phone/MiuiEditFdnContactScreen$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/MiuiEditFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v0, p0, v5}, Lcom/android/phone/MiuiEditFdnContactScreen$QueryHandler;-><init>(Lcom/android/phone/MiuiEditFdnContactScreen;Landroid/content/ContentResolver;)V

    .line 203
    .local v0, queryHandler:Lcom/android/phone/MiuiEditFdnContactScreen$QueryHandler;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 204
    .local v4, bundle:Landroid/content/ContentValues;
    sget-object v5, Lcom/android/phone/MiuiEditFdnContactScreen$4;->$SwitchMap$com$android$phone$MiuiEditFdnContactScreen$Actions:[I

    invoke-virtual {p1}, Lcom/android/phone/MiuiEditFdnContactScreen$Actions;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 206
    :pswitch_0
    const-string v5, "tag"

    invoke-direct {p0}, Lcom/android/phone/MiuiEditFdnContactScreen;->getNameFromTextField()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v5, "number"

    invoke-direct {p0}, Lcom/android/phone/MiuiEditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v5, "pin2"

    invoke-direct {p0}, Lcom/android/phone/MiuiEditFdnContactScreen;->getPin2FromTextField()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/MiuiEditFdnContactScreen$QueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 212
    :pswitch_1
    const-string v5, "tag"

    iget-object v6, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v5, "number"

    iget-object v6, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v5, "pin2"

    invoke-direct {p0}, Lcom/android/phone/MiuiEditFdnContactScreen;->getPin2FromTextField()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v5, "newTag"

    invoke-direct {p0}, Lcom/android/phone/MiuiEditFdnContactScreen;->getNameFromTextField()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v5, "newNumber"

    invoke-direct {p0}, Lcom/android/phone/MiuiEditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v2

    move-object v6, v2

    .line 217
    invoke-virtual/range {v0 .. v6}, Lcom/android/phone/MiuiEditFdnContactScreen$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :pswitch_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v11, buf:Ljava/lang/StringBuilder;
    const-string v5, "tag=\'"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v5, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v5, "\' AND number=\'"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget-object v5, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string v5, "\' AND pin2=\'"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-direct {p0}, Lcom/android/phone/MiuiEditFdnContactScreen;->getPin2FromTextField()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const-string v5, "\'"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/MiuiEditFdnContactScreen;->log(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v0

    move v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v10, v2

    invoke-virtual/range {v5 .. v10}, Lcom/android/phone/MiuiEditFdnContactScreen$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private resolveIntent()V
    .locals 3

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/phone/MiuiEditFdnContactScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 100
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mName:Ljava/lang/String;

    .line 101
    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mNumber:Ljava/lang/String;

    .line 102
    const-string v1, "is_add"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mAddContact:Z

    .line 103
    return-void
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 112
    const v0, 0x7f07006f

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiEditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    .line 113
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 116
    :cond_0
    const v0, 0x7f070070

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiEditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    .line 117
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 119
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 121
    :cond_1
    const v0, 0x7f070071

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiEditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    .line 122
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 124
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 125
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 127
    :cond_2
    const v0, 0x7f070072

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiEditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mDeleteButton:Landroid/widget/Button;

    .line 128
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mDeleteButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mDeleteButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    :cond_3
    const v0, 0x7f070073

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiEditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mOkButton:Landroid/widget/Button;

    .line 132
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mOkButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 133
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mOkButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    :cond_4
    const v0, 0x7f070074

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiEditFdnContactScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mCancelButton:Landroid/widget/Button;

    .line 136
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    .line 137
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    :cond_5
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 141
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 147
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :goto_1
    iget-boolean v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mAddContact:Z

    if-eqz v0, :cond_8

    .line 153
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mDeleteButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 157
    :goto_2
    return-void

    .line 143
    :cond_6
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 149
    :cond_7
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 155
    :cond_8
    iget-object v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mDeleteButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method

.method private showStatus(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "statusMsg"

    .prologue
    .line 266
    if-eqz p1, :cond_0

    .line 267
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 269
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-direct {p0}, Lcom/android/phone/MiuiEditFdnContactScreen;->resolveIntent()V

    .line 83
    invoke-virtual {p0}, Lcom/android/phone/MiuiEditFdnContactScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 84
    invoke-virtual {p0}, Lcom/android/phone/MiuiEditFdnContactScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 87
    const v0, 0x7f040012

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiEditFdnContactScreen;->setContentView(I)V

    .line 88
    invoke-direct {p0}, Lcom/android/phone/MiuiEditFdnContactScreen;->setupView()V

    .line 90
    iget-boolean v0, p0, Lcom/android/phone/MiuiEditFdnContactScreen;->mAddContact:Z

    if-eqz v0, :cond_0

    .line 91
    const v0, 0x7f0c0133

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiEditFdnContactScreen;->setTitle(I)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    const v0, 0x7f0c0136

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiEditFdnContactScreen;->setTitle(I)V

    goto :goto_0
.end method
