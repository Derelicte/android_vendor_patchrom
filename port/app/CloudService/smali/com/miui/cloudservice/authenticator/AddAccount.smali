.class public Lcom/miui/cloudservice/authenticator/AddAccount;
.super Landroid/app/Fragment;
.source "AddAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/cloudservice/authenticator/AddAccount$1;,
        Lcom/miui/cloudservice/authenticator/AddAccount$ForgetPasswordClickListener;,
        Lcom/miui/cloudservice/authenticator/AddAccount$MobileCreateClickListener;,
        Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;
    }
.end annotation


# static fields
.field private static MENU_CREATE_BY_EMAIL:I

.field private static MENU_CREATE_BY_MOBILE:I


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mCreateButton:Landroid/widget/Button;

.field private mForgetPassword:Landroid/widget/TextView;

.field private mLogin:Landroid/widget/FrameLayout;

.field private mLoginButton:Landroid/widget/Button;

.field private mPassword:Ljava/lang/String;

.field private mPasswordEditText:Landroid/widget/EditText;

.field private mProgressbar:Landroid/widget/ProgressBar;

.field private mUsername:Ljava/lang/String;

.field private mUsernameEditText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    sput v0, Lcom/miui/cloudservice/authenticator/AddAccount;->MENU_CREATE_BY_MOBILE:I

    .line 40
    const/4 v0, 0x2

    sput v0, Lcom/miui/cloudservice/authenticator/AddAccount;->MENU_CREATE_BY_EMAIL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 55
    return-void
.end method

.method static synthetic access$300(Lcom/miui/cloudservice/authenticator/AddAccount;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/AddAccount;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/cloudservice/authenticator/AddAccount;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/AddAccount;->mUsername:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/cloudservice/authenticator/AddAccount;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/AddAccount;->mUsernameEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/cloudservice/authenticator/AddAccount;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/AddAccount;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/miui/cloudservice/authenticator/AddAccount;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/AddAccount;->mPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/miui/cloudservice/authenticator/AddAccount;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/AddAccount;->mPasswordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/cloudservice/authenticator/AddAccount;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/miui/cloudservice/authenticator/AddAccount;->setLoginButtonStyles(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/cloudservice/authenticator/AddAccount;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/cloudservice/authenticator/AddAccount;->mobileCreate()V

    return-void
.end method

.method private mobileCreate()V
    .locals 3

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/AddAccount;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 204
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/cloudservice/authenticator/Authenticator$NewAccountVercodeActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    invoke-virtual {p0, v1}, Lcom/miui/cloudservice/authenticator/AddAccount;->startActivity(Landroid/content/Intent;)V

    .line 206
    return-void
.end method

.method private setLoginButtonStyles(Z)V
    .locals 3
    .parameter "isPreExecute"

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/AddAccount;->mProgressbar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/AddAccount;->mLogin:Landroid/widget/FrameLayout;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 132
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/AddAccount;->mLoginButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    const v0, 0x7f070032

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 133
    return-void

    .line 130
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 132
    :cond_2
    const v0, 0x7f070004

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .parameter "pSavedInstanceState"

    .prologue
    const/4 v8, 0x0

    .line 72
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/AddAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 74
    .local v1, activity:Landroid/app/Activity;
    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/cloudservice/authenticator/AddAccount;->mAccountManager:Landroid/accounts/AccountManager;

    .line 75
    iget-object v6, p0, Lcom/miui/cloudservice/authenticator/AddAccount;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v7, "com.miui.auth"

    invoke-virtual {v6, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 77
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v6, v0

    if-eqz v6, :cond_1

    .line 79
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.settings.XIAOMI_ACCOUNT_SYNC_SETTINGS"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v3, newPage:Landroid/content/Intent;
    const-string v6, "account"

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v3}, Lcom/miui/cloudservice/authenticator/AddAccount;->startActivity(Landroid/content/Intent;)V

    .line 83
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 105
    .end local v3           #newPage:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/AddAccount;->getView()Landroid/view/View;

    move-result-object v5

    .line 88
    .local v5, view:Landroid/view/View;
    const v6, 0x7f090002

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/miui/cloudservice/authenticator/AddAccount;->mLogin:Landroid/widget/FrameLayout;

    .line 89
    const v6, 0x7f090003

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/miui/cloudservice/authenticator/AddAccount;->mLoginButton:Landroid/widget/Button;

    .line 90
    iget-object v6, p0, Lcom/miui/cloudservice/authenticator/AddAccount;->mLoginButton:Landroid/widget/Button;

    new-instance v7, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;

    invoke-direct {v7, p0, v8}, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;-><init>(Lcom/miui/cloudservice/authenticator/AddAccount;Lcom/miui/cloudservice/authenticator/AddAccount$1;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v6, 0x7f090006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/miui/cloudservice/authenticator/AddAccount;->mCreateButton:Landroid/widget/Button;

    .line 92
    iget-object v6, p0, Lcom/miui/cloudservice/authenticator/AddAccount;->mCreateButton:Landroid/widget/Button;

    new-instance v7, Lcom/miui/cloudservice/authenticator/AddAccount$MobileCreateClickListener;

    invoke-direct {v7, p0, v8}, Lcom/miui/cloudservice/authenticator/AddAccount$MobileCreateClickListener;-><init>(Lcom/miui/cloudservice/authenticator/AddAccount;Lcom/miui/cloudservice/authenticator/AddAccount$1;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v6, 0x7f090004

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, p0, Lcom/miui/cloudservice/authenticator/AddAccount;->mProgressbar:Landroid/widget/ProgressBar;

    .line 94
    const/high16 v6, 0x7f09

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/miui/cloudservice/authenticator/AddAccount;->mUsernameEditText:Landroid/widget/EditText;

    .line 95
    const v6, 0x7f090001

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/miui/cloudservice/authenticator/AddAccount;->mPasswordEditText:Landroid/widget/EditText;

    .line 96
    const v6, 0x7f090005

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/miui/cloudservice/authenticator/AddAccount;->mForgetPassword:Landroid/widget/TextView;

    .line 97
    iget-object v6, p0, Lcom/miui/cloudservice/authenticator/AddAccount;->mForgetPassword:Landroid/widget/TextView;

    new-instance v7, Lcom/miui/cloudservice/authenticator/AddAccount$ForgetPasswordClickListener;

    invoke-direct {v7, p0, v8}, Lcom/miui/cloudservice/authenticator/AddAccount$ForgetPasswordClickListener;-><init>(Lcom/miui/cloudservice/authenticator/AddAccount;Lcom/miui/cloudservice/authenticator/AddAccount$1;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 100
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "username"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, username:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 102
    iget-object v6, p0, Lcom/miui/cloudservice/authenticator/AddAccount;->mUsernameEditText:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v6, p0, Lcom/miui/cloudservice/authenticator/AddAccount;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/cloudservice/authenticator/AddAccount;->setHasOptionsMenu(Z)V

    .line 61
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 109
    sget v0, Lcom/miui/cloudservice/authenticator/AddAccount;->MENU_CREATE_BY_MOBILE:I

    const v1, 0x7f07001f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 110
    sget v0, Lcom/miui/cloudservice/authenticator/AddAccount;->MENU_CREATE_BY_EMAIL:I

    const v1, 0x7f07001e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 111
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 66
    const/high16 v1, 0x7f03

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 116
    .local v1, itemId:I
    sget v3, Lcom/miui/cloudservice/authenticator/AddAccount;->MENU_CREATE_BY_MOBILE:I

    if-ne v1, v3, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/miui/cloudservice/authenticator/AddAccount;->mobileCreate()V

    .line 125
    :goto_0
    return v2

    .line 119
    :cond_0
    sget v3, Lcom/miui/cloudservice/authenticator/AddAccount;->MENU_CREATE_BY_EMAIL:I

    if-ne v1, v3, :cond_1

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "http://passport.xiaomi.com/user/register"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 122
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/miui/cloudservice/authenticator/AddAccount;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 125
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method
