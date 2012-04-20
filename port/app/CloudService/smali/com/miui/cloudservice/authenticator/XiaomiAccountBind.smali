.class public Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;
.super Landroid/app/Fragment;
.source "XiaomiAccountBind.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBindType:I

.field private mEditText:Landroid/widget/EditText;

.field private mToken:Ljava/lang/String;

.field private mVerifyButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mBindType:I

    return v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const v7, 0x7f090014

    .line 59
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->getView()Landroid/view/View;

    move-result-object v4

    .line 62
    .local v4, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 63
    .local v2, activity:Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 64
    .local v1, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 66
    const v5, 0x7f090016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mVerifyButton:Landroid/widget/Button;

    .line 67
    iget-object v5, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mVerifyButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v5, 0x7f090015

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mEditText:Landroid/widget/EditText;

    .line 70
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 71
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "android.settings.XIAOMI_ACCOUNT_BIND_NICKNAME"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 72
    const-string v5, "account"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 73
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 74
    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    const-string v6, "token"

    invoke-virtual {v5, v0, v6}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mToken:Ljava/lang/String;

    .line 75
    iput v8, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mBindType:I

    .line 84
    .end local v0           #account:Landroid/accounts/Account;
    :goto_0
    iget v5, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mBindType:I

    if-ne v5, v9, :cond_2

    .line 85
    const v5, 0x7f07004e

    invoke-virtual {v2, v5}, Landroid/app/Activity;->setTitle(I)V

    .line 86
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f07004f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 87
    iget-object v5, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mEditText:Landroid/widget/EditText;

    const v6, 0x7f070050

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(I)V

    .line 88
    iget-object v5, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mEditText:Landroid/widget/EditText;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 89
    iget-object v5, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mVerifyButton:Landroid/widget/Button;

    const v6, 0x7f070051

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 102
    :goto_1
    return-void

    .line 77
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_0
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 80
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1
    const-string v5, "extra_token"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mToken:Ljava/lang/String;

    .line 81
    const-string v5, "extra_bind_type"

    invoke-virtual {v3, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mBindType:I

    goto :goto_0

    .line 90
    :cond_2
    iget v5, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mBindType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 91
    const v5, 0x7f070048

    invoke-virtual {v2, v5}, Landroid/app/Activity;->setTitle(I)V

    .line 92
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f070049

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 93
    iget-object v5, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mEditText:Landroid/widget/EditText;

    const v6, 0x7f07004a

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(I)V

    .line 94
    iget-object v5, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mEditText:Landroid/widget/EditText;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 95
    iget-object v5, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mVerifyButton:Landroid/widget/Button;

    const v6, 0x7f07004b

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 97
    :cond_3
    const v5, 0x7f070043

    invoke-virtual {v2, v5}, Landroid/app/Activity;->setTitle(I)V

    .line 98
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f070044

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 99
    iget-object v5, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mEditText:Landroid/widget/EditText;

    const v6, 0x7f070045

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(I)V

    .line 100
    iget-object v5, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mVerifyButton:Landroid/widget/Button;

    const v6, 0x7f070046

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v4, 0x2

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 106
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 108
    .local v9, value:Ljava/lang/String;
    iget v0, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mBindType:I

    if-ne v0, v4, :cond_0

    .line 109
    invoke-static {v9}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mEditText:Landroid/widget/EditText;

    const v1, 0x7f070052

    invoke-virtual {p0, v1}, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 212
    :goto_0
    return-void

    .line 113
    :cond_0
    iget v0, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mBindType:I

    if-ne v0, v10, :cond_1

    .line 114
    const-string v0, "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 115
    .local v7, namePat:Ljava/util/regex/Pattern;
    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mEditText:Landroid/widget/EditText;

    const v1, 0x7f07004c

    invoke-virtual {p0, v1}, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 121
    .end local v7           #namePat:Ljava/util/regex/Pattern;
    :cond_1
    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 122
    .local v2, activity:Landroid/app/Activity;
    new-instance v6, Lcom/miui/cloudservice/authenticator/AccountHelper;

    invoke-direct {v6, v2}, Lcom/miui/cloudservice/authenticator/AccountHelper;-><init>(Landroid/content/Context;)V

    .line 123
    .local v6, helper:Lcom/miui/cloudservice/authenticator/AccountHelper;
    invoke-virtual {v6}, Lcom/miui/cloudservice/authenticator/AccountHelper;->getParameter()Lcom/miui/cloudservice/authenticator/Parameter;

    move-result-object v8

    .line 124
    .local v8, params:Lcom/miui/cloudservice/authenticator/Parameter;
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 125
    const-string v0, "token"

    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mToken:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 127
    :cond_2
    iget v0, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mBindType:I

    if-ne v0, v4, :cond_3

    .line 128
    const-string v0, "phone"

    invoke-virtual {v8, v0, v9}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 135
    :goto_1
    new-instance v0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;

    const v4, 0x7f070056

    move-object v1, p0

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;-><init>(Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;Landroid/content/Context;IIZLcom/miui/cloudservice/authenticator/AccountHelper;)V

    new-array v1, v10, [Lcom/miui/cloudservice/authenticator/Parameter;

    aput-object v8, v1, v3

    invoke-virtual {v0, v1}, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 129
    :cond_3
    iget v0, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mBindType:I

    if-ne v0, v10, :cond_4

    .line 130
    const-string v0, "email"

    invoke-virtual {v8, v0, v9}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    goto :goto_1

    .line 132
    :cond_4
    const-string v0, "nickname"

    invoke-virtual {v8, v0, v9}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 53
    const v1, 0x7f030005

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, view:Landroid/view/View;
    return-object v0
.end method
