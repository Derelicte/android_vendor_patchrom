.class public Lcom/miui/cloudservice/authenticator/NewAccountRegister;
.super Landroid/app/Fragment;
.source "NewAccountRegister.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;

.field private mMid:Ljava/lang/String;

.field private mNextButton:Landroid/widget/Button;

.field private mNickname:Landroid/widget/EditText;

.field private mPassword:Landroid/widget/EditText;

.field private mPcWebLayout:Landroid/view/View;

.field private mPcWebsite:Landroid/widget/TextView;

.field private mPrevButton:Landroid/widget/Button;

.field private mSalt:Ljava/lang/String;

.field private mShowPassword:Landroid/widget/CheckBox;

.field private mToken:Ljava/lang/String;

.field private mVercode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mToken:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mSalt:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mMid:Ljava/lang/String;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/miui/cloudservice/authenticator/NewAccountRegister;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mNickname:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/cloudservice/authenticator/NewAccountRegister;)Lcom/miui/cloudservice/authenticator/AccountHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/cloudservice/authenticator/NewAccountRegister;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "pSavedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 64
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 66
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 67
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 71
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "vercode"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mVercode:Ljava/lang/String;

    .line 72
    iget-object v4, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mVercode:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 73
    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 102
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {p0, v6}, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->setHasOptionsMenu(Z)V

    .line 77
    new-instance v4, Lcom/miui/cloudservice/authenticator/AccountHelper;

    invoke-direct {v4, v1}, Lcom/miui/cloudservice/authenticator/AccountHelper;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;

    .line 79
    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->getView()Landroid/view/View;

    move-result-object v3

    .line 81
    .local v3, view:Landroid/view/View;
    const v4, 0x7f090007

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mNickname:Landroid/widget/EditText;

    .line 82
    iget-object v4, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mNickname:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 83
    const v4, 0x7f090001

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mPassword:Landroid/widget/EditText;

    .line 85
    const v4, 0x7f090008

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mShowPassword:Landroid/widget/CheckBox;

    .line 86
    iget-object v4, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    const v4, 0x7f090009

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mPrevButton:Landroid/widget/Button;

    .line 89
    iget-object v4, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mPrevButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v4, 0x7f09000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mNextButton:Landroid/widget/Button;

    .line 92
    iget-object v4, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v4, 0x7f090013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mPcWebsite:Landroid/widget/TextView;

    .line 95
    const v4, 0x7f090012

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mPcWebLayout:Landroid/view/View;

    .line 96
    iget-object v4, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mPcWebLayout:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 99
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v4, "mid"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mMid:Ljava/lang/String;

    .line 100
    const-string v4, "salt"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mSalt:Ljava/lang/String;

    .line 101
    const-string v4, "token"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mToken:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mShowPassword:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_0

    .line 240
    if-eqz p2, :cond_1

    .line 241
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mPassword:Landroid/widget/EditText;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mPassword:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    .line 159
    iget-object v7, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mNextButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_5

    .line 160
    iget-object v7, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mNickname:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, nickname:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 162
    :cond_0
    iget-object v7, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mNickname:Landroid/widget/EditText;

    const v8, 0x7f070035

    invoke-virtual {p0, v8}, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 235
    .end local v3           #nickname:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 165
    .restart local v3       #nickname:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 166
    .local v5, password:Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x6

    if-lt v7, v8, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x10

    if-le v7, v8, :cond_4

    .line 167
    :cond_3
    iget-object v7, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mPassword:Landroid/widget/EditText;

    const v8, 0x7f070036

    invoke-virtual {p0, v8}, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 171
    :cond_4
    new-instance v1, Lcom/miui/cloudservice/authenticator/AccountHelper;

    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/miui/cloudservice/authenticator/AccountHelper;-><init>(Landroid/content/Context;)V

    .line 172
    .local v1, helper:Lcom/miui/cloudservice/authenticator/AccountHelper;
    invoke-virtual {v1}, Lcom/miui/cloudservice/authenticator/AccountHelper;->getParameter()Lcom/miui/cloudservice/authenticator/Parameter;

    move-result-object v4

    .line 173
    .local v4, params:Lcom/miui/cloudservice/authenticator/Parameter;
    const-string v7, "vkey"

    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mVercode:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 174
    const-string v7, "nickname"

    invoke-virtual {v4, v7, v3}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 175
    const-string v7, "password"

    invoke-virtual {v4, v7, v5}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 176
    const-string v7, "originalpassword"

    invoke-virtual {v4, v7, v5}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 177
    const-string v7, "mid"

    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mMid:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 178
    const-string v7, "salt"

    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mSalt:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 179
    const-string v7, "token"

    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mToken:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 180
    new-instance v7, Lcom/miui/cloudservice/authenticator/NewAccountRegister$2;

    invoke-direct {v7, p0}, Lcom/miui/cloudservice/authenticator/NewAccountRegister$2;-><init>(Lcom/miui/cloudservice/authenticator/NewAccountRegister;)V

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/miui/cloudservice/authenticator/Parameter;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-virtual {v7, v8}, Lcom/miui/cloudservice/authenticator/NewAccountRegister$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 227
    .end local v1           #helper:Lcom/miui/cloudservice/authenticator/AccountHelper;
    .end local v3           #nickname:Ljava/lang/String;
    .end local v4           #params:Lcom/miui/cloudservice/authenticator/Parameter;
    .end local v5           #password:Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mPrevButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_6

    .line 228
    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 229
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto/16 :goto_0

    .line 230
    .end local v0           #activity:Landroid/app/Activity;
    :cond_6
    iget-object v7, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mPcWebLayout:Landroid/view/View;

    if-ne p1, v7, :cond_1

    .line 231
    iget-object v7, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mPcWebsite:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 232
    .local v6, site:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 233
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 58
    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 117
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mNickname:Landroid/widget/EditText;

    if-ne p1, v2, :cond_1

    if-nez p2, :cond_1

    .line 119
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mNickname:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, nickname:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mNickname:Landroid/widget/EditText;

    const v3, 0x7f070035

    invoke-virtual {p0, v3}, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 155
    .end local v0           #nickname:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 125
    .restart local v0       #nickname:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;

    invoke-virtual {v2}, Lcom/miui/cloudservice/authenticator/AccountHelper;->getParameter()Lcom/miui/cloudservice/authenticator/Parameter;

    move-result-object v1

    .line 126
    .local v1, params:Lcom/miui/cloudservice/authenticator/Parameter;
    const-string v2, "nickname"

    invoke-virtual {v1, v2, v0}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 127
    new-instance v2, Lcom/miui/cloudservice/authenticator/NewAccountRegister$1;

    invoke-direct {v2, p0}, Lcom/miui/cloudservice/authenticator/NewAccountRegister$1;-><init>(Lcom/miui/cloudservice/authenticator/NewAccountRegister;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/miui/cloudservice/authenticator/Parameter;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/miui/cloudservice/authenticator/NewAccountRegister$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 106
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 111
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 108
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 109
    const/4 v0, 0x1

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
