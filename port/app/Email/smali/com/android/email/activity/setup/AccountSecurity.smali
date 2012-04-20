.class public Lcom/android/email/activity/setup/AccountSecurity;
.super Landroid/app/Activity;
.source "AccountSecurity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;,
        Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/Account;

.field private mTriedAddAdministrator:Z

.field private mTriedSetEncryption:Z

.field private mTriedSetPassword:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedAddAdministrator:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetPassword:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetEncryption:Z

    .line 364
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/emailcommon/provider/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSecurity;->tryAdvanceSecurity(Lcom/android/emailcommon/provider/Account;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/emailcommon/provider/Account;Lcom/android/email/SecurityPolicy;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/Account;Lcom/android/email/SecurityPolicy;)V

    return-void
.end method

.method public static actionDevicePasswordExpirationIntent(Landroid/content/Context;JZ)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/android/email/activity/setup/AccountSecurity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    const-string v0, "ACCOUNT_ID"

    invoke-virtual {v1, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 96
    if-eqz p3, :cond_0

    const-string v0, "EXPIRED"

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    return-object v1

    .line 96
    :cond_0
    const-string v0, "EXPIRING"

    goto :goto_0
.end method

.method public static actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSecurity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 83
    const-string v1, "SHOW_DIALOG"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    return-object v0
.end method

.method private repostNotification(Lcom/android/emailcommon/provider/Account;Lcom/android/email/SecurityPolicy;)V
    .locals 1
    .parameter "account"
    .parameter "security"

    .prologue
    .line 285
    if-nez p1, :cond_0

    .line 292
    :goto_0
    return-void

    .line 286
    :cond_0
    new-instance v0, Lcom/android/email/activity/setup/AccountSecurity$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/email/activity/setup/AccountSecurity$1;-><init>(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/email/SecurityPolicy;Lcom/android/emailcommon/provider/Account;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private tryAdvanceSecurity(Lcom/android/emailcommon/provider/Account;)V
    .locals 10
    .parameter "account"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 176
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v3

    .line 178
    .local v3, security:Lcom/android/email/SecurityPolicy;
    invoke-virtual {v3}, Lcom/android/email/SecurityPolicy;->isActiveAdmin()Z

    move-result v4

    if-nez v4, :cond_5

    .line 179
    iget-boolean v4, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedAddAdministrator:Z

    if-eqz v4, :cond_1

    .line 180
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 181
    const-string v4, "Email/AccountSecurity"

    const-string v5, "Not active admin: repost notification"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/Account;Lcom/android/email/SecurityPolicy;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    .line 278
    :goto_0
    return-void

    .line 186
    :cond_1
    iput-boolean v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedAddAdministrator:Z

    .line 188
    iget-wide v4, p1, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v4, v5}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 189
    .local v0, hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    if-nez v0, :cond_3

    .line 190
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 191
    const-string v4, "Email/AccountSecurity"

    const-string v5, "No HostAuth: repost notification"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_2
    invoke-direct {p0, p1, v3}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/Account;Lcom/android/email/SecurityPolicy;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0

    .line 196
    :cond_3
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 197
    const-string v4, "Email/AccountSecurity"

    const-string v5, "Not active admin: post initial notification"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v3}, Lcom/android/email/SecurityPolicy;->getAdminComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 203
    const-string v4, "android.app.extra.ADD_EXPLANATION"

    const v5, 0x7f080123

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/email/activity/setup/AccountSecurity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0, v2, v9}, Lcom/android/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 214
    .end local v0           #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    invoke-virtual {v3, v5}, Lcom/android/email/SecurityPolicy;->isActive(Lcom/android/emailcommon/provider/Policy;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 215
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_6

    .line 216
    const-string v4, "Email/AccountSecurity"

    const-string v5, "Security active; clear holds"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_6
    invoke-static {p0}, Lcom/android/emailcommon/provider/Account;->clearSecurityHoldOnAllAccounts(Landroid/content/Context;)V

    .line 219
    invoke-virtual {v3}, Lcom/android/email/SecurityPolicy;->clearNotification()V

    .line 220
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0

    .line 225
    :cond_7
    invoke-virtual {v3}, Lcom/android/email/SecurityPolicy;->setActivePolicies()V

    .line 229
    invoke-virtual {v3, v5}, Lcom/android/email/SecurityPolicy;->getInactiveReasons(Lcom/android/emailcommon/provider/Policy;)I

    move-result v1

    .line 232
    .local v1, inactiveReasons:I
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_b

    .line 233
    iget-boolean v4, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetPassword:Z

    if-eqz v4, :cond_9

    .line 234
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_8

    .line 235
    const-string v4, "Email/AccountSecurity"

    const-string v5, "Password needed; repost notification"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_8
    invoke-direct {p0, p1, v3}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/Account;Lcom/android/email/SecurityPolicy;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto/16 :goto_0

    .line 240
    :cond_9
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_a

    .line 241
    const-string v4, "Email/AccountSecurity"

    const-string v5, "Password needed; request it via DPM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_a
    iput-boolean v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetPassword:Z

    .line 245
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .restart local v2       #intent:Landroid/content/Intent;
    const/4 v4, 0x2

    invoke-virtual {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 252
    .end local v2           #intent:Landroid/content/Intent;
    :cond_b
    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_f

    .line 253
    iget-boolean v4, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetEncryption:Z

    if-eqz v4, :cond_d

    .line 254
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_c

    .line 255
    const-string v4, "Email/AccountSecurity"

    const-string v5, "Encryption needed; repost notification"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_c
    invoke-direct {p0, p1, v3}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/Account;Lcom/android/email/SecurityPolicy;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto/16 :goto_0

    .line 260
    :cond_d
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_e

    .line 261
    const-string v4, "Email/AccountSecurity"

    const-string v5, "Encryption needed; request it via DPM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_e
    iput-boolean v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetEncryption:Z

    .line 265
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.app.action.START_ENCRYPTION"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .restart local v2       #intent:Landroid/content/Intent;
    const/4 v4, 0x3

    invoke-virtual {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 272
    .end local v2           #intent:Landroid/content/Intent;
    :cond_f
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_10

    .line 273
    const-string v4, "Email/AccountSecurity"

    const-string v5, "Policies enforced; clear holds"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_10
    invoke-static {p0}, Lcom/android/emailcommon/provider/Account;->clearSecurityHoldOnAllAccounts(Landroid/content/Context;)V

    .line 276
    invoke-virtual {v3}, Lcom/android/email/SecurityPolicy;->clearNotification()V

    .line 277
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSecurity;->tryAdvanceSecurity(Lcom/android/emailcommon/provider/Account;)V

    .line 159
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 160
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v11, -0x1

    const/4 v10, 0x0

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 106
    .local v4, i:Landroid/content/Intent;
    const-string v9, "ACCOUNT_ID"

    invoke-virtual {v4, v9, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 107
    .local v0, accountId:J
    const-string v9, "SHOW_DIALOG"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 108
    .local v8, showDialog:Z
    const-string v9, "EXPIRING"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 109
    .local v6, passwordExpiring:Z
    const-string v9, "EXPIRED"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 110
    .local v5, passwordExpired:Z
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v7

    .line 111
    .local v7, security:Lcom/android/email/SecurityPolicy;
    invoke-virtual {v7}, Lcom/android/email/SecurityPolicy;->clearNotification()V

    .line 112
    cmp-long v9, v0, v11

    if-nez v9, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v9

    iput-object v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 118
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-nez v9, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0

    .line 123
    :cond_2
    if-nez v6, :cond_3

    if-eqz v5, :cond_4

    .line 124
    :cond_3
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 125
    .local v3, fm:Landroid/app/FragmentManager;
    const-string v9, "password_expiration"

    invoke-virtual {v3, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v9

    if-nez v9, :cond_0

    .line 126
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v9}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->newInstance(Ljava/lang/String;Z)Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;

    move-result-object v2

    .line 129
    .local v2, dialog:Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;
    const-string v9, "password_expiration"

    invoke-virtual {v2, v3, v9}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    .end local v2           #dialog:Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;
    .end local v3           #fm:Landroid/app/FragmentManager;
    :cond_4
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v9, v9, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_6

    .line 136
    if-eqz v8, :cond_5

    .line 138
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 139
    .restart local v3       #fm:Landroid/app/FragmentManager;
    const-string v9, "security_needed"

    invoke-virtual {v3, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v9

    if-nez v9, :cond_0

    .line 140
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v9}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;->newInstance(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;

    move-result-object v2

    .line 142
    .local v2, dialog:Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;
    const-string v9, "security_needed"

    invoke-virtual {v2, v3, v9}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    .end local v2           #dialog:Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;
    .end local v3           #fm:Landroid/app/FragmentManager;
    :cond_5
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-direct {p0, v9}, Lcom/android/email/activity/setup/AccountSecurity;->tryAdvanceSecurity(Lcom/android/emailcommon/provider/Account;)V

    goto :goto_0

    .line 150
    :cond_6
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0
.end method
