.class public Lcom/android/settings/accounts/MiuiManageAccountsSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "MiuiManageAccountsSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/settings/DialogCreatable;


# instance fields
.field private mAuthorities:[Ljava/lang/String;

.field private mAutoSyncSlidingButton:Lmiui/widget/SlidingButton;

.field private mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mErrorInfoView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    return-void
.end method

.method private startAccountSettings(Lcom/android/settings/AccountPreference;)V
    .locals 7
    .parameter

    .prologue
    .line 152
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 153
    const-string v0, "account"

    invoke-virtual {p1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0530

    invoke-virtual {p1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 158
    return-void
.end method


# virtual methods
.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 13
    .parameter "accounts"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    if-nez v11, :cond_0

    .line 294
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 267
    const/4 v3, 0x0

    .local v3, i:I
    array-length v7, p1

    .local v7, n:I
    :goto_1
    if-ge v3, v7, :cond_5

    .line 268
    aget-object v0, p1, v3

    .line 269
    .local v0, account:Landroid/accounts/Account;
    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 271
    .local v2, auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x1

    .line 272
    .local v10, showAccount:Z
    iget-object v11, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v11, :cond_1

    if-eqz v2, :cond_1

    .line 273
    const/4 v10, 0x0

    .line 274
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v6, :cond_1

    aget-object v9, v1, v4

    .line 275
    .local v9, requestedAuthority:Ljava/lang/String;
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 276
    const/4 v10, 0x1

    .line 282
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v9           #requestedAuthority:Ljava/lang/String;
    :cond_1
    if-eqz v10, :cond_2

    .line 283
    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 285
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    const-string v11, "com.miui.auth"

    iget-object v12, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 286
    new-instance v8, Lcom/android/settings/accounts/XiaomiAccountPreference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v8, v11, v0, v5, v2}, Lcom/android/settings/accounts/XiaomiAccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;)V

    .line 290
    .local v8, preference:Lcom/android/settings/AccountPreference;
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 267
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .end local v8           #preference:Lcom/android/settings/AccountPreference;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 274
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v6       #len$:I
    .restart local v9       #requestedAuthority:Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 288
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v9           #requestedAuthority:Ljava/lang/String;
    .restart local v5       #icon:Landroid/graphics/drawable/Drawable;
    :cond_4
    new-instance v8, Lcom/android/settings/AccountPreference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v8, v11, v0, v5, v2}, Lcom/android/settings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;)V

    .restart local v8       #preference:Lcom/android/settings/AccountPreference;
    goto :goto_3

    .line 293
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .end local v8           #preference:Lcom/android/settings/AccountPreference;
    .end local v10           #showAccount:Z
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->onSyncStateUpdated()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 107
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getView()Landroid/view/View;

    move-result-object v1

    .line 109
    .local v1, view:Landroid/view/View;
    const v2, 0x7f08000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 110
    iget-object v2, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    new-instance v2, Lmiui/widget/SlidingButton;

    invoke-direct {v2, v0}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mAutoSyncSlidingButton:Lmiui/widget/SlidingButton;

    .line 115
    iget-object v2, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mAutoSyncSlidingButton:Lmiui/widget/SlidingButton;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    invoke-virtual {v2, v3}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 116
    iget-object v2, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mAutoSyncSlidingButton:Lmiui/widget/SlidingButton;

    new-instance v3, Lcom/android/settings/accounts/MiuiManageAccountsSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings$1;-><init>(Lcom/android/settings/accounts/MiuiManageAccountsSettings;)V

    invoke-virtual {v2, v3}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 124
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "authorities"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->updateAuthDescriptions()V

    .line 127
    return-void
.end method

.method public onAddAccountClicked()V
    .locals 3

    .prologue
    .line 307
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "authorities"

    iget-object v2, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->startActivity(Landroid/content/Intent;)V

    .line 310
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 3

    .prologue
    .line 299
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/AccountPreference;

    .line 301
    .local v1, pref:Lcom/android/settings/AccountPreference;
    invoke-virtual {v1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/AccountPreference;->setProviderIcon(Landroid/graphics/drawable/Drawable;)V

    .line 302
    invoke-virtual {v1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    .end local v1           #pref:Lcom/android/settings/AccountPreference;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f050029

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->setHasOptionsMenu(Z)V

    .line 76
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 171
    const/4 v1, 0x1

    const v2, 0x7f0b0532

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 172
    .local v0, addAccountItem:Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 174
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 98
    const v1, 0x7f040037

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 178
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 179
    .local v0, itemId:I
    if-ne v0, v1, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->onAddAccountClicked()V

    .line 183
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferences"
    .parameter "preference"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 141
    instance-of v1, p2, Lcom/android/settings/accounts/XiaomiAccountPreference;

    if-eqz v1, :cond_1

    .line 148
    .end local p2
    :cond_0
    :goto_0
    return v0

    .line 143
    .restart local p2
    :cond_1
    instance-of v1, p2, Lcom/android/settings/AccountPreference;

    if-eqz v1, :cond_0

    .line 144
    check-cast p2, Lcom/android/settings/AccountPreference;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->startAccountSettings(Lcom/android/settings/AccountPreference;)V

    .line 148
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v6, -0x2

    .line 80
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStart()V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 82
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, p0, v4, v5}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 83
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 85
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 87
    .local v2, rightMargin:I
    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v1, v6, v6, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 91
    .local v1, layoutParams:Landroid/app/ActionBar$LayoutParams;
    iput v2, v1, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    .line 92
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mAutoSyncSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v3, v4, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 93
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 131
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStop()V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 133
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 134
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 135
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 136
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 29

    .prologue
    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    if-nez v25, :cond_0

    .line 260
    :goto_0
    return-void

    .line 192
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mAutoSyncSlidingButton:Lmiui/widget/SlidingButton;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mAutoSyncSlidingButton:Lmiui/widget/SlidingButton;

    move-object/from16 v25, v0

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 197
    :cond_1
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v10

    .line 199
    .local v10, currentSync:Landroid/content/SyncInfo;
    const/4 v5, 0x0

    .line 202
    .local v5, anySyncFailed:Z
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v19

    .line 203
    .local v19, syncAdapters:[Landroid/content/SyncAdapterType;
    new-instance v24, Ljava/util/HashSet;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashSet;-><init>()V

    .line 204
    .local v24, userFacing:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .local v13, k:I
    move-object/from16 v0, v19

    array-length v15, v0

    .local v15, n:I
    :goto_1
    if-ge v13, v15, :cond_3

    .line 205
    aget-object v17, v19, v13

    .line 206
    .local v17, sa:Landroid/content/SyncAdapterType;
    invoke-virtual/range {v17 .. v17}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v25

    if-eqz v25, :cond_2

    .line 207
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 210
    .end local v17           #sa:Landroid/content/SyncAdapterType;
    :cond_3
    const/4 v11, 0x0

    .local v11, i:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v9

    .local v9, count:I
    :goto_2
    if-ge v11, v9, :cond_f

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v16

    .line 212
    .local v16, pref:Landroid/preference/Preference;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/settings/AccountPreference;

    move/from16 v25, v0

    if-nez v25, :cond_4

    .line 210
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v3, v16

    .line 216
    check-cast v3, Lcom/android/settings/AccountPreference;

    .line 217
    .local v3, accountPref:Lcom/android/settings/AccountPreference;
    invoke-virtual {v3}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 218
    .local v2, account:Landroid/accounts/Account;
    const/16 v20, 0x0

    .line 219
    .local v20, syncCount:I
    const/16 v22, 0x0

    .line 220
    .local v22, syncIsFailing:Z
    invoke-virtual {v3}, Lcom/android/settings/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v6

    .line 221
    .local v6, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_a

    .line 222
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 223
    .local v7, authority:Ljava/lang/String;
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v18

    .line 224
    .local v18, status:Landroid/content/SyncStatusInfo;
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_6

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v25

    if-eqz v25, :cond_6

    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v25

    if-lez v25, :cond_6

    const/16 v21, 0x1

    .line 227
    .local v21, syncEnabled:Z
    :goto_5
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v8

    .line 228
    .local v8, authorityIsPending:Z
    if-eqz v10, :cond_7

    iget-object v0, v10, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    new-instance v25, Landroid/accounts/Account;

    iget-object v0, v10, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    iget-object v0, v10, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-direct/range {v25 .. v27}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    const/4 v4, 0x1

    .line 232
    .local v4, activelySyncing:Z
    :goto_6
    if-eqz v18, :cond_8

    if-eqz v21, :cond_8

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-eqz v25, :cond_8

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    const/4 v14, 0x1

    .line 237
    .local v14, lastSyncFailed:Z
    :goto_7
    if-eqz v14, :cond_5

    if-nez v4, :cond_5

    if-nez v8, :cond_5

    .line 238
    const/16 v22, 0x1

    .line 239
    const/4 v5, 0x1

    .line 241
    :cond_5
    if-eqz v21, :cond_9

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    const/16 v25, 0x1

    :goto_8
    add-int v20, v20, v25

    .line 242
    goto/16 :goto_4

    .line 224
    .end local v4           #activelySyncing:Z
    .end local v8           #authorityIsPending:Z
    .end local v14           #lastSyncFailed:Z
    .end local v21           #syncEnabled:Z
    :cond_6
    const/16 v21, 0x0

    goto :goto_5

    .line 228
    .restart local v8       #authorityIsPending:Z
    .restart local v21       #syncEnabled:Z
    :cond_7
    const/4 v4, 0x0

    goto :goto_6

    .line 232
    .restart local v4       #activelySyncing:Z
    :cond_8
    const/4 v14, 0x0

    goto :goto_7

    .line 241
    .restart local v14       #lastSyncFailed:Z
    :cond_9
    const/16 v25, 0x0

    goto :goto_8

    .line 244
    .end local v4           #activelySyncing:Z
    .end local v7           #authority:Ljava/lang/String;
    .end local v8           #authorityIsPending:Z
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #lastSyncFailed:Z
    .end local v18           #status:Landroid/content/SyncStatusInfo;
    .end local v21           #syncEnabled:Z
    :cond_a
    const-string v25, "AccountSettings"

    const/16 v26, 0x2

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 245
    const-string v25, "AccountSettings"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "no syncadapters found for "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_b
    const/16 v23, 0x1

    .line 249
    .local v23, syncStatus:I
    if-eqz v22, :cond_d

    .line 250
    const/16 v23, 0x2

    .line 256
    :cond_c
    :goto_9
    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/settings/AccountPreference;->setSyncStatus(I)V

    goto/16 :goto_3

    .line 251
    :cond_d
    if-nez v20, :cond_e

    .line 252
    const/16 v23, 0x1

    goto :goto_9

    .line 253
    :cond_e
    if-lez v20, :cond_c

    .line 254
    const/16 v23, 0x0

    goto :goto_9

    .line 259
    .end local v2           #account:Landroid/accounts/Account;
    .end local v3           #accountPref:Lcom/android/settings/AccountPreference;
    .end local v6           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16           #pref:Landroid/preference/Preference;
    .end local v20           #syncCount:I
    .end local v22           #syncIsFailing:Z
    .end local v23           #syncStatus:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    if-eqz v5, :cond_10

    const/16 v25, 0x0

    :goto_a
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_10
    const/16 v25, 0x8

    goto :goto_a
.end method

.method public showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "AccountSettings"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 166
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 167
    return-void
.end method
