.class public Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;
.super Landroid/app/Activity;
.source "ContactEditorAccountsChangedActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountListAdapter:Lcom/android/contacts/util/AccountsListAdapter;

.field private final mAccountListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mAddAccountClickListener:Landroid/view/View$OnClickListener;

.field private mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    new-instance v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$1;-><init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAccountListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 68
    new-instance v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$2;-><init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAddAccountClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)Lcom/android/contacts/util/AccountsListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAccountListAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->saveAccountAndReturnResult(Lcom/android/contacts/model/AccountWithDataSet;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)Lcom/android/contacts/editor/ContactEditorUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    return-object v0
.end method

.method private saveAccountAndReturnResult(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v1, p1}, Lcom/android/contacts/editor/ContactEditorUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 190
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 191
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 192
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setResult(ILandroid/content/Intent;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->finish()V

    .line 194
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 168
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 171
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v1, p2, p3}, Lcom/android/contacts/editor/ContactEditorUtils;->getCreatedAccount(ILandroid/content/Intent;)Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v0

    .line 176
    .local v0, account:Lcom/android/contacts/model/AccountWithDataSet;
    if-nez v0, :cond_2

    .line 177
    invoke-virtual {p0, p2}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setResult(I)V

    .line 178
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->finish()V

    goto :goto_0

    .line 181
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->saveAccountAndReturnResult(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const v13, 0x7f0b01be

    const v12, 0x7f070089

    const v11, 0x7f070088

    const v10, 0x7f04002a

    const v9, 0x7f070085

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-static {p0}, Lcom/android/contacts/editor/ContactEditorUtils;->getInstance(Landroid/content/Context;)Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    .line 81
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/model/AccountTypeManager;->getCreateableAccounts()Ljava/util/List;

    move-result-object v2

    .line 83
    .local v2, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 84
    .local v5, numAccounts:I
    if-gez v5, :cond_0

    .line 85
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Cannot have a negative number of accounts"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 89
    :cond_0
    const/4 v8, 0x2

    if-lt v5, v8, :cond_1

    .line 92
    const v8, 0x7f040029

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setContentView(I)V

    .line 94
    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 95
    .local v7, textView:Landroid/widget/TextView;
    const v8, 0x7f0b01c0

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const v8, 0x7f070087

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 98
    .local v3, button:Landroid/widget/Button;
    const v8, 0x7f0b01c3

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAddAccountClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v8, 0x7f070086

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 102
    .local v1, accountListView:Landroid/widget/ListView;
    new-instance v8, Lcom/android/contacts/util/AccountsListAdapter;

    sget-object v9, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_CREATEABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-direct {v8, p0, v9}, Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;)V

    iput-object v8, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAccountListAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    .line 104
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAccountListAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAccountListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 164
    .end local v1           #accountListView:Landroid/widget/ListView;
    .end local v3           #button:Landroid/widget/Button;
    :goto_0
    return-void

    .line 106
    .end local v7           #textView:Landroid/widget/TextView;
    :cond_1
    const/4 v8, 0x1

    if-ne v5, v8, :cond_2

    .line 109
    invoke-virtual {p0, v10}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setContentView(I)V

    .line 111
    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 112
    .restart local v7       #textView:Landroid/widget/TextView;
    invoke-virtual {p0, v11}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 113
    .local v4, leftButton:Landroid/widget/Button;
    invoke-virtual {p0, v12}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 115
    .local v6, rightButton:Landroid/widget/Button;
    const/4 v8, 0x0

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 118
    .local v0, account:Lcom/android/contacts/model/AccountWithDataSet;
    invoke-virtual {p0, v13}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    const v8, 0x7f0b01c3

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAddAccountClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v8, 0x7f0b01c1

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 128
    new-instance v8, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$3;

    invoke-direct {v8, p0, v0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$3;-><init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;Lcom/android/contacts/model/AccountWithDataSet;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 137
    .end local v0           #account:Lcom/android/contacts/model/AccountWithDataSet;
    .end local v4           #leftButton:Landroid/widget/Button;
    .end local v6           #rightButton:Landroid/widget/Button;
    .end local v7           #textView:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {p0, v10}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setContentView(I)V

    .line 139
    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 140
    .restart local v7       #textView:Landroid/widget/TextView;
    invoke-virtual {p0, v11}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 141
    .restart local v4       #leftButton:Landroid/widget/Button;
    invoke-virtual {p0, v12}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 143
    .restart local v6       #rightButton:Landroid/widget/Button;
    invoke-virtual {p0, v13}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const v8, 0x7f0b01c1

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 148
    new-instance v8, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$4;

    invoke-direct {v8, p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$4;-><init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)V

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const v8, 0x7f0b01c2

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAddAccountClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method
