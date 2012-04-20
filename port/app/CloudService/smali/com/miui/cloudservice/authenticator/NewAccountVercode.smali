.class public Lcom/miui/cloudservice/authenticator/NewAccountVercode;
.super Landroid/app/Fragment;
.source "NewAccountVercode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/cloudservice/authenticator/NewAccountVercode$IntentSpan;
    }
.end annotation


# static fields
.field private static COUNT_DOWN_COUNTS:I

.field private static COUNT_DOWN_TYPE:I


# instance fields
.field private mCountDownHandler:Landroid/os/Handler;

.field private mGetVercode:Landroid/widget/Button;

.field private mHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;

.field private mMid:Ljava/lang/String;

.field private mMobile:Landroid/widget/EditText;

.field private mNextAccount:Landroid/widget/Button;

.field private mPcWebLayout:Landroid/view/View;

.field private mPcWebsite:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mSalt:Ljava/lang/String;

.field private mStatus:Landroid/widget/TextView;

.field private mToken:Ljava/lang/String;

.field private mUserAgreement:Landroid/widget/TextView;

.field private mVercode:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput v0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->COUNT_DOWN_TYPE:I

    .line 60
    const/16 v0, 0x1e

    sput v0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->COUNT_DOWN_COUNTS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mToken:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mSalt:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mMid:Ljava/lang/String;

    .line 260
    new-instance v0, Lcom/miui/cloudservice/authenticator/NewAccountVercode$2;

    invoke-direct {v0, p0}, Lcom/miui/cloudservice/authenticator/NewAccountVercode$2;-><init>(Lcom/miui/cloudservice/authenticator/NewAccountVercode;)V

    iput-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mCountDownHandler:Landroid/os/Handler;

    .line 64
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->COUNT_DOWN_TYPE:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->COUNT_DOWN_COUNTS:I

    return v0
.end method

.method static synthetic access$200(Lcom/miui/cloudservice/authenticator/NewAccountVercode;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mCountDownHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/cloudservice/authenticator/NewAccountVercode;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->updateLoginStatus(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/cloudservice/authenticator/NewAccountVercode;)Lcom/miui/cloudservice/authenticator/AccountHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;

    return-object v0
.end method

.method static synthetic access$502(Lcom/miui/cloudservice/authenticator/NewAccountVercode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mMid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/miui/cloudservice/authenticator/NewAccountVercode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/miui/cloudservice/authenticator/NewAccountVercode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mSalt:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/miui/cloudservice/authenticator/NewAccountVercode;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mGetVercode:Landroid/widget/Button;

    return-object v0
.end method

.method private updateLoginStatus(I)V
    .locals 3
    .parameter "resId"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 165
    if-lez p1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 168
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mGetVercode:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 174
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .parameter "pSavedInstanceState"

    .prologue
    const/16 v12, 0x21

    const/4 v8, 0x1

    .line 75
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 77
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 78
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 81
    :cond_0
    invoke-virtual {p0, v8}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->setHasOptionsMenu(Z)V

    .line 83
    new-instance v8, Lcom/miui/cloudservice/authenticator/AccountHelper;

    invoke-direct {v8, v1}, Lcom/miui/cloudservice/authenticator/AccountHelper;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;

    .line 85
    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->getView()Landroid/view/View;

    move-result-object v7

    .line 87
    .local v7, view:Landroid/view/View;
    const v8, 0x7f09000c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mMobile:Landroid/widget/EditText;

    .line 88
    const v8, 0x7f09000e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mVercode:Landroid/widget/EditText;

    .line 90
    const v8, 0x7f09000d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mGetVercode:Landroid/widget/Button;

    .line 91
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mGetVercode:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v8, 0x7f090011

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mStatus:Landroid/widget/TextView;

    .line 94
    const v8, 0x7f090010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    iput-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mProgress:Landroid/widget/ProgressBar;

    .line 96
    const v8, 0x7f09000a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mNextAccount:Landroid/widget/Button;

    .line 97
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mNextAccount:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v8, 0x7f090013

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mPcWebsite:Landroid/widget/TextView;

    .line 100
    const v8, 0x7f090012

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mPcWebLayout:Landroid/view/View;

    .line 101
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mPcWebLayout:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v8, 0x7f07002e

    invoke-virtual {p0, v8}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, s1:Ljava/lang/String;
    const v8, 0x7f07002f

    invoke-virtual {p0, v8}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, s2:Ljava/lang/String;
    const v8, 0x7f070030

    invoke-virtual {p0, v8}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, s3:Ljava/lang/String;
    const v8, 0x7f070031

    invoke-virtual {p0, v8}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, s4:Ljava/lang/String;
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 109
    .local v6, ss:Landroid/text/SpannableStringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 110
    new-instance v8, Lcom/miui/cloudservice/authenticator/NewAccountVercode$IntentSpan;

    sget-object v9, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_USER_AGREEMENT:Ljava/lang/String;

    invoke-direct {v8, p0, v9}, Lcom/miui/cloudservice/authenticator/NewAccountVercode$IntentSpan;-><init>(Lcom/miui/cloudservice/authenticator/NewAccountVercode;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v6, v8, v9, v10, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 112
    new-instance v8, Lcom/miui/cloudservice/authenticator/NewAccountVercode$IntentSpan;

    sget-object v9, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_PRIVACY_POLICY:Ljava/lang/String;

    invoke-direct {v8, p0, v9}, Lcom/miui/cloudservice/authenticator/NewAccountVercode$IntentSpan;-><init>(Lcom/miui/cloudservice/authenticator/NewAccountVercode;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v6, v8, v9, v10, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 116
    const v8, 0x7f09000f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mUserAgreement:Landroid/widget/TextView;

    .line 117
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mUserAgreement:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mUserAgreement:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 119
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const v2, 0x7f070033

    const/4 v4, 0x1

    .line 189
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mGetVercode:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mMobile:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 258
    :cond_1
    :goto_0
    return-void

    .line 196
    :cond_2
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;

    invoke-virtual {v1}, Lcom/miui/cloudservice/authenticator/AccountHelper;->getParameter()Lcom/miui/cloudservice/authenticator/Parameter;

    move-result-object v1

    .line 197
    const-string v2, "phone"

    invoke-virtual {v1, v2, v0}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 198
    new-instance v0, Lcom/miui/cloudservice/authenticator/NewAccountVercode$1;

    invoke-direct {v0, p0}, Lcom/miui/cloudservice/authenticator/NewAccountVercode$1;-><init>(Lcom/miui/cloudservice/authenticator/NewAccountVercode;)V

    new-array v2, v4, [Lcom/miui/cloudservice/authenticator/Parameter;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/miui/cloudservice/authenticator/NewAccountVercode$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mNextAccount:Landroid/widget/Button;

    if-ne p1, v0, :cond_8

    .line 238
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 240
    :cond_4
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mMobile:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 243
    :cond_5
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mVercode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 245
    :cond_6
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mVercode:Landroid/widget/EditText;

    const v1, 0x7f070034

    invoke-virtual {p0, v1}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 248
    :cond_7
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/miui/cloudservice/authenticator/Authenticator$NewAccountRegisterActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    const-string v2, "show_detail"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    const-string v2, "vercode"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    invoke-virtual {p0, v1}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 253
    :cond_8
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mPcWebLayout:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mPcWebsite:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 256
    invoke-virtual {p0, v1}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 69
    const v1, 0x7f030003

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 178
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 183
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 180
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 181
    const/4 v0, 0x1

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 145
    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 146
    .local v0, prefs:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mMobile:Landroid/widget/EditText;

    const-string v2, "phone"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const-string v1, "mid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mMid:Ljava/lang/String;

    .line 148
    const-string v1, "salt"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mSalt:Ljava/lang/String;

    .line 149
    const-string v1, "token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mToken:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 155
    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 156
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "phone"

    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mMobile:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "mid"

    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mMid:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "salt"

    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mSalt:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "token"

    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mToken:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    :goto_2
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 161
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mCountDownHandler:Landroid/os/Handler;

    sget v2, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->COUNT_DOWN_TYPE:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 162
    return-void

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mMid:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mSalt:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mToken:Ljava/lang/String;

    goto :goto_2
.end method
