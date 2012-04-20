.class public Lcom/android/contacts/activities/GroupDetailActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "GroupDetailActivity.java"


# instance fields
.field private mAccountTypeString:Ljava/lang/String;

.field private mDataSet:Ljava/lang/String;

.field private mFragment:Lcom/android/contacts/group/GroupDetailFragment;

.field private final mFragmentListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

.field private mShowGroupSourceInActionBar:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 88
    new-instance v0, Lcom/android/contacts/activities/GroupDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/GroupDetailActivity$1;-><init>(Lcom/android/contacts/activities/GroupDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragmentListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/activities/GroupDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mAccountTypeString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/contacts/activities/GroupDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mDataSet:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/GroupDetailActivity;)Lcom/android/contacts/group/GroupDetailFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 206
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 208
    packed-switch p1, :pswitch_data_0

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 210
    :pswitch_0
    const-string v0, "android.intent.extra.picked_multiple_contacts"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 212
    .local v1, uris:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupDetailFragment;->getAccountName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupDetailFragment;->getAccountType()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupDetailFragment;->getAccountDataSet()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupDetailFragment;->getGroupId()J

    move-result-wide v5

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/contacts/ContactSaveService;->createAddToGrouIntent(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v7

    .line 217
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/GroupDetailActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedState"

    .prologue
    const/16 v4, 0xe

    const/4 v3, 0x1

    .line 60
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v1, 0x7f04005d

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/GroupDetailActivity;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mShowGroupSourceInActionBar:Z

    .line 70
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0700e1

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/group/GroupDetailFragment;

    iput-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    .line 72
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragmentListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    invoke-virtual {v1, v2}, Lcom/android/contacts/group/GroupDetailFragment;->setListener(Lcom/android/contacts/group/GroupDetailFragment$Listener;)V

    .line 73
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    iget-boolean v2, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mShowGroupSourceInActionBar:Z

    invoke-virtual {v1, v2}, Lcom/android/contacts/group/GroupDetailFragment;->setShowGroupSourceInActionBar(Z)V

    .line 74
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/group/GroupDetailFragment;->loadGroup(Landroid/net/Uri;)V

    .line 75
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v1, v3}, Lcom/android/contacts/group/GroupDetailFragment;->closeActivityAfterDelete(Z)V

    .line 78
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 79
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 84
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 86
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 128
    iget-boolean v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mShowGroupSourceInActionBar:Z

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 130
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f100008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 133
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 134
    .restart local v0       #inflater:Landroid/view/MenuInflater;
    const v1, 0x7f100007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 135
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 179
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 201
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 181
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->finish()V

    goto :goto_0

    .line 187
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const/4 v2, 0x0

    const-string v3, "vnd.android.cursor.dir/contact_multiple"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v2, "android.intent.extra.pick_multiple_contacts_mode"

    const-string v3, "multi_picker_mode_not_in_group"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v2, "android.intent.extra.pick_account_name"

    iget-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v3}, Lcom/android/contacts/group/GroupDetailFragment;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v2, "android.intent.extra.pick_account_type"

    iget-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v3}, Lcom/android/contacts/group/GroupDetailFragment;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const-string v2, "android.intent.extra.pick_account_dataset"

    iget-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v3}, Lcom/android/contacts/group/GroupDetailFragment;->getAccountDataSet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v2, "android.intent.extra.pick_group_id"

    iget-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v3}, Lcom/android/contacts/group/GroupDetailFragment;->getGroupId()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 196
    invoke-static {p0, v1}, Lcom/android/contacts/ContactsUtils;->processPackageScope(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 179
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f07017f -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 140
    const v7, 0x7f07017f

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 141
    .local v1, groupAddMenuItem:Landroid/view/MenuItem;
    iget-object v7, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v7}, Lcom/android/contacts/group/GroupDetailFragment;->isGroupMembershipEditable()Z

    move-result v7

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 143
    iget-boolean v7, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mShowGroupSourceInActionBar:Z

    if-nez v7, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v5

    .line 146
    :cond_1
    const v7, 0x7f070180

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 147
    .local v2, groupSourceMenuItem:Landroid/view/MenuItem;
    if-eqz v2, :cond_0

    .line 150
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    .line 151
    .local v4, manager:Lcom/android/contacts/model/AccountTypeManager;
    iget-object v7, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mAccountTypeString:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mDataSet:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 153
    .local v0, accountType:Lcom/android/contacts/model/AccountType;
    iget-object v7, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mAccountTypeString:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getViewGroupActivity()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 155
    :cond_2
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 158
    :cond_3
    invoke-static {p0}, Lcom/android/contacts/group/GroupDetailDisplayUtils;->getNewGroupSourceView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    .line 159
    .local v3, groupSourceView:Landroid/view/View;
    iget-object v5, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mAccountTypeString:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mDataSet:Ljava/lang/String;

    invoke-static {p0, v3, v5, v7}, Lcom/android/contacts/group/GroupDetailDisplayUtils;->bindGroupSourceView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v5, Lcom/android/contacts/activities/GroupDetailActivity$2;

    invoke-direct {v5, p0, v0}, Lcom/android/contacts/activities/GroupDetailActivity$2;-><init>(Lcom/android/contacts/activities/GroupDetailActivity;Lcom/android/contacts/model/AccountType;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 172
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v5, v6

    .line 173
    goto :goto_0
.end method
