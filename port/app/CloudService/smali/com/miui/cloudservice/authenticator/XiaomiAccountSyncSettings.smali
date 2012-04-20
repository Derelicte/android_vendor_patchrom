.class public Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;
.super Landroid/preference/PreferenceFragment;
.source "XiaomiAccountSyncSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;
    }
.end annotation


# instance fields
.field protected mAccount:Landroid/accounts/Account;

.field private mAccountInfoCheckTask:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;

.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mUserAccountCategory:Landroid/preference/PreferenceCategory;

.field private mUserDetailPref:Landroid/preference/Preference;

.field private mUserEmail:Landroid/preference/Preference;

.field private mUserIdPref:Landroid/preference/Preference;

.field private mUserMitalkCategory:Landroid/preference/PreferenceCategory;

.field private mUserMitalkSyncPref:Landroid/preference/CheckBoxPreference;

.field private mUserNicknamePref:Landroid/preference/Preference;

.field private mUserPhone:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserMitalkSyncPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->init()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->initValueAndContact()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;)Landroid/accounts/AccountManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccountManager:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->initMiuiAccount()V

    .line 134
    invoke-direct {p0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->initValueAndContact()V

    .line 135
    invoke-direct {p0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->initMiliao()V

    .line 136
    return-void
.end method

.method private initMiliao()V
    .locals 3

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->isMitalkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserMitalkCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 154
    :cond_0
    const-string v1, "persist.sys.mitalk.enable"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 157
    .local v0, isMitalkSync:Z
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserMitalkSyncPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 158
    if-nez v0, :cond_1

    .line 159
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserAccountCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserDetailPref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccountInfoCheckTask:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccountInfoCheckTask:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;

    invoke-virtual {v1}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_3

    .line 163
    :cond_2
    new-instance v1, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;

    invoke-direct {v1, p0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;-><init>(Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;)V

    iput-object v1, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccountInfoCheckTask:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;

    .line 164
    new-instance v1, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;

    invoke-direct {v1, p0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;-><init>(Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 166
    :cond_3
    return-void
.end method

.method private initMiuiAccount()V
    .locals 4

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccountManager:Landroid/accounts/AccountManager;

    .line 140
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v3, "com.miui.auth"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 141
    .local v0, accounts:[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 142
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccount:Landroid/accounts/Account;

    .line 143
    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 144
    .local v1, actionBar:Landroid/app/ActionBar;
    const v2, 0x7f020004

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setIcon(I)V

    .line 145
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    const v2, 0x7f07003d

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setSubtitle(I)V

    .line 148
    .end local v1           #actionBar:Landroid/app/ActionBar;
    :cond_0
    return-void
.end method

.method private initValueAndContact()V
    .locals 14

    .prologue
    .line 169
    iget-object v11, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v12, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccount:Landroid/accounts/Account;

    const-string v13, "mid"

    invoke-virtual {v11, v12, v13}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 170
    .local v6, mid:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 171
    iget-object v11, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserIdPref:Landroid/preference/Preference;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f070040

    invoke-virtual {p0, v13}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 174
    :cond_0
    iget-object v11, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserIdPref:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 175
    iget-object v11, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v12, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccount:Landroid/accounts/Account;

    const-string v13, "nickname"

    invoke-virtual {v11, v12, v13}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 177
    .local v7, nickname:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 178
    iget-object v11, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserNicknamePref:Landroid/preference/Preference;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f070042

    invoke-virtual {p0, v13}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v11, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserNicknamePref:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 180
    iget-object v11, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserNicknamePref:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 187
    :goto_0
    iget-object v11, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v12, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccount:Landroid/accounts/Account;

    const-string v13, "EM"

    invoke-virtual {v11, v12, v13}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, emailString:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 189
    iget-object v11, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserEmail:Landroid/preference/Preference;

    invoke-virtual {v11, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 190
    iget-object v11, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserEmail:Landroid/preference/Preference;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f070047

    invoke-virtual {p0, v13}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f070055

    invoke-virtual {p0, v13}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v11, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserEmail:Landroid/preference/Preference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 204
    :cond_1
    iget-object v11, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v12, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccount:Landroid/accounts/Account;

    const-string v13, "PH"

    invoke-virtual {v11, v12, v13}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 205
    .local v9, phoneString:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 206
    iget-object v11, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserPhone:Landroid/preference/Preference;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f07004d

    invoke-virtual {p0, v13}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f070055

    invoke-virtual {p0, v13}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v11, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserPhone:Landroid/preference/Preference;

    invoke-virtual {v11, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 208
    iget-object v11, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserPhone:Landroid/preference/Preference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 220
    :cond_2
    return-void

    .line 182
    .end local v2           #emailString:Ljava/lang/String;
    .end local v9           #phoneString:Ljava/lang/String;
    :cond_3
    iget-object v11, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserNicknamePref:Landroid/preference/Preference;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f070042

    invoke-virtual {p0, v13}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f070055

    invoke-virtual {p0, v13}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v11, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserNicknamePref:Landroid/preference/Preference;

    invoke-virtual {v11, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 184
    iget-object v11, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserNicknamePref:Landroid/preference/Preference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 194
    .restart local v2       #emailString:Ljava/lang/String;
    :cond_4
    const-string v11, ";"

    invoke-static {v2, v11}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, emails:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 196
    .local v1, email:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 197
    iget-object v11, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserEmail:Landroid/preference/Preference;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f070047

    invoke-virtual {p0, v13}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v11, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserEmail:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 199
    iget-object v11, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserEmail:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 195
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 211
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #email:Ljava/lang/String;
    .end local v3           #emails:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .restart local v9       #phoneString:Ljava/lang/String;
    :cond_6
    const-string v11, ";"

    invoke-static {v9, v11}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 212
    .local v10, phones:[Ljava/lang/String;
    move-object v0, v10

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_2
    if-ge v4, v5, :cond_2

    aget-object v8, v0, v4

    .line 213
    .local v8, phone:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 214
    iget-object v11, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserPhone:Landroid/preference/Preference;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f07004d

    invoke-virtual {p0, v13}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v11, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserPhone:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 216
    iget-object v11, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserPhone:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 212
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private isMitalkAvailable()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 224
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 225
    .local v1, pm:Landroid/content/pm/PackageManager;
    const-string v4, "com.xiaomi.channel"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 226
    .local v0, pckInfo:Landroid/content/pm/PackageInfo;
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .local v2, version:I
    const/16 v4, 0xe6

    if-lt v2, v4, :cond_0

    const/4 v3, 0x1

    .line 234
    .end local v0           #pckInfo:Landroid/content/pm/PackageInfo;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    .end local v2           #version:I
    :cond_0
    :goto_0
    return v3

    .line 232
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private showDialog(I)V
    .locals 7
    .parameter "dialogId"

    .prologue
    const/high16 v6, 0x104

    const v5, 0x1010355

    const/16 v4, 0xc8

    .line 256
    const/4 v1, 0x0

    .line 257
    .local v1, dialog:Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 258
    .local v0, activity:Landroid/app/Activity;
    const/16 v3, 0x64

    if-ne p1, v3, :cond_2

    .line 259
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f07003e

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07003f

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070060

    new-instance v5, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$1;

    invoke-direct {v5, p0, v0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$1;-><init>(Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;Landroid/app/Activity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 332
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 333
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 335
    :cond_1
    return-void

    .line 297
    :cond_2
    if-eq p1, v4, :cond_3

    const/16 v3, 0xc9

    if-ne p1, v3, :cond_0

    .line 298
    :cond_3
    if-ne p1, v4, :cond_4

    const/4 v2, 0x1

    .line 300
    .local v2, isEnable:Z
    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_5

    const v3, 0x7f07005c

    :goto_2
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    if-eqz v2, :cond_6

    const v3, 0x7f07005d

    :goto_3
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$3;

    invoke-direct {v4, p0, v2}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$3;-><init>(Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;Z)V

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$2;

    invoke-direct {v5, p0, v2, v0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$2;-><init>(Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;ZLandroid/app/Activity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 298
    .end local v2           #isEnable:Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 300
    .restart local v2       #isEnable:Z
    :cond_5
    const v3, 0x7f07005e

    goto :goto_2

    :cond_6
    const v3, 0x7f07005f

    goto :goto_3
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v7, 0x10

    const/4 v6, -0x2

    .line 105
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 108
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030001

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mProgressBar:Landroid/widget/ProgressBar;

    .line 109
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 110
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 111
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mProgressBar:Landroid/widget/ProgressBar;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v6, v6, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 116
    const-string v2, "pref_key_user_id"

    invoke-virtual {p0, v2}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserIdPref:Landroid/preference/Preference;

    .line 117
    const-string v2, "pref_key_user_nickname"

    invoke-virtual {p0, v2}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserNicknamePref:Landroid/preference/Preference;

    .line 118
    const-string v2, "pref_key_user_email"

    invoke-virtual {p0, v2}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserEmail:Landroid/preference/Preference;

    .line 119
    const-string v2, "pref_key_user_phone"

    invoke-virtual {p0, v2}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserPhone:Landroid/preference/Preference;

    .line 121
    const-string v2, "pref_key_user_detail"

    invoke-virtual {p0, v2}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserDetailPref:Landroid/preference/Preference;

    .line 122
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserDetailPref:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 123
    const-string v2, "pref_key_user_mitalk_sync"

    invoke-virtual {p0, v2}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserMitalkSyncPref:Landroid/preference/CheckBoxPreference;

    .line 124
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserMitalkSyncPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 126
    const-string v2, "pref_category_user_account"

    invoke-virtual {p0, v2}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserAccountCategory:Landroid/preference/PreferenceCategory;

    .line 127
    const-string v2, "pref_category_user_mitalk"

    invoke-virtual {p0, v2}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserMitalkCategory:Landroid/preference/PreferenceCategory;

    .line 129
    invoke-direct {p0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->init()V

    .line 130
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->addPreferencesFromResource(I)V

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->setHasOptionsMenu(Z)V

    .line 101
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 239
    const/4 v1, 0x1

    const v2, 0x7f070060

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 240
    .local v0, addAccountItem:Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 242
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 246
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 247
    .local v0, itemId:I
    if-ne v0, v1, :cond_0

    .line 248
    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->showDialog(I)V

    .line 251
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 433
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserDetailPref:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 435
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.xiaomi.channel.NAME_CARD_XT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 436
    const-string v2, "account"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    invoke-virtual {p0, v0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :cond_0
    :goto_0
    return v1

    .line 438
    :catch_0
    move-exception v0

    .line 439
    const-string v0, "XiaomiAccountSyncSettings"

    const-string v2, "miliao not handle this intent"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserMitalkSyncPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_3

    .line 442
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mUserMitalkSyncPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xc8

    :goto_1
    invoke-direct {p0, v0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->showDialog(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0xc9

    goto :goto_1

    .line 445
    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 447
    const-string v3, "pref_key_user_email"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 454
    :goto_2
    if-eq v0, v2, :cond_0

    .line 455
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/miui/cloudservice/authenticator/Authenticator$XiaomiAccountBindActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 456
    iget-object v3, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v4, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccount:Landroid/accounts/Account;

    const-string v5, "token"

    invoke-virtual {v3, v4, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 457
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 458
    const-string v4, "extra_token"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    :cond_4
    const-string v3, "extra_bind_type"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 461
    invoke-virtual {p0, v2}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 449
    :cond_5
    const-string v3, "pref_key_user_phone"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 450
    const/4 v0, 0x2

    goto :goto_2

    .line 451
    :cond_6
    const-string v3, "pref_key_user_nickname"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 452
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_2
.end method
