.class public Lcom/android/email/activity/setup/AccountSetupOptions;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupOptions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountSyncWindowRow:Landroid/view/View;

.field private mBackgroundAttachmentsView:Landroid/widget/CheckBox;

.field private mCheckFrequencyView:Landroid/widget/Spinner;

.field private mDefaultView:Landroid/widget/CheckBox;

.field private mDonePressed:Z

.field private mNotifyView:Landroid/widget/CheckBox;

.field private mSyncCalendarView:Landroid/widget/CheckBox;

.field private mSyncContactsView:Landroid/widget/CheckBox;

.field private mSyncEmailView:Landroid/widget/CheckBox;

.field private mSyncWindowView:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDonePressed:Z

    .line 273
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupOptions$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupOptions$2;-><init>(Lcom/android/email/activity/setup/AccountSetupOptions;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupOptions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->optionsComplete()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupOptions;I[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupOptions;->showErrorDialog(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static actionOptions(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 76
    return-void
.end method

.method private enableEASSyncWindowSpinner()V
    .locals 13

    .prologue
    .line 385
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccountSyncWindowRow:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 388
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060005

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v9

    .line 390
    .local v9, windowValues:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060004

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 394
    .local v6, windowEntries:[Ljava/lang/CharSequence;
    array-length v2, v6

    .line 395
    .local v2, maxEntry:I
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v10

    iget-object v4, v10, Lcom/android/emailcommon/provider/Account;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 396
    .local v4, policy:Lcom/android/emailcommon/provider/Policy;
    if-eqz v4, :cond_0

    .line 397
    iget v3, v4, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    .line 398
    .local v3, maxLookback:I
    if-eqz v3, :cond_0

    .line 403
    add-int/lit8 v2, v3, 0x1

    .line 408
    .end local v3           #maxLookback:I
    :cond_0
    new-array v7, v2, [Lcom/android/email/activity/setup/SpinnerOption;

    .line 409
    .local v7, windowOptions:[Lcom/android/email/activity/setup/SpinnerOption;
    const/4 v0, -0x1

    .line 410
    .local v0, defaultIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 411
    aget-object v10, v9, v1

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 412
    .local v5, value:I
    new-instance v10, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aget-object v12, v6, v1

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v10, v7, v1

    .line 413
    const/4 v10, -0x2

    if-ne v5, v10, :cond_1

    .line 414
    move v0, v1

    .line 410
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 418
    .end local v5           #value:I
    :cond_2
    new-instance v8, Landroid/widget/ArrayAdapter;

    const v10, 0x1090008

    invoke-direct {v8, p0, v10, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 420
    .local v8, windowOptionsAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v10, 0x1090009

    invoke-virtual {v8, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 422
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncWindowView:Landroid/widget/Spinner;

    invoke-virtual {v10, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 424
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncWindowView:Landroid/widget/Spinner;

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/emailcommon/provider/Account;->getSyncLookback()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 426
    if-ltz v0, :cond_3

    .line 427
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncWindowView:Landroid/widget/Spinner;

    invoke-virtual {v10, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 429
    :cond_3
    return-void
.end method

.method private onDone()V
    .locals 11

    .prologue
    .line 208
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    .line 209
    .local v2, account:Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/Account;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/emailcommon/provider/Account;->setDisplayName(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/Account;->getFlags()I

    move-result v0

    and-int/lit16 v9, v0, -0x102

    .line 217
    .local v9, newFlags:I
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    or-int/lit8 v9, v9, 0x1

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mBackgroundAttachmentsView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    or-int/lit16 v9, v9, 0x100

    .line 223
    :cond_2
    invoke-virtual {v2, v9}, Lcom/android/emailcommon/provider/Account;->setFlags(I)V

    .line 224
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v0, v0, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/emailcommon/provider/Account;->setSyncInterval(I)V

    .line 226
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccountSyncWindowRow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 227
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncWindowView:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v0, v0, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 228
    .local v10, window:I
    invoke-virtual {v2, v10}, Lcom/android/emailcommon/provider/Account;->setSyncLookback(I)V

    .line 230
    .end local v10           #window:I
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/emailcommon/provider/Account;->setDefaultAccount(Z)V

    .line 232
    iget-object v0, v2, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v0, :cond_4

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "in AccountSetupOptions with null mHostAuthRecv"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_4
    iget v0, v2, Lcom/android/emailcommon/provider/Account;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v2, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 239
    const/4 v6, 0x0

    .line 240
    .local v6, calendar:Z
    const/4 v7, 0x0

    .line 241
    .local v7, contacts:Z
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncEmailView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    .line 242
    .local v8, email:Z
    iget-object v0, v2, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    const-string v1, "eas"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 243
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getPolicy()Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 244
    iget v0, v2, Lcom/android/emailcommon/provider/Account;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v2, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 245
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getPolicy()Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    iput-object v0, v2, Lcom/android/emailcommon/provider/Account;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 248
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    .line 249
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    .line 256
    :cond_6
    move v3, v8

    .line 257
    .local v3, email2:Z
    move v4, v6

    .line 258
    .local v4, calendar2:Z
    move v5, v7

    .line 259
    .local v5, contacts2:Z
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupOptions$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/setup/AccountSetupOptions$1;-><init>(Lcom/android/email/activity/setup/AccountSetupOptions;Lcom/android/emailcommon/provider/Account;ZZZ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method private optionsComplete()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 324
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v1

    .line 326
    .local v1, authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v1, :cond_0

    .line 327
    invoke-virtual {v1, v3}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 328
    invoke-static {v3}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 332
    :cond_0
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 333
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget v3, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit8 v3, v3, -0x11

    iput v3, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 334
    invoke-static {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 337
    iget v3, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1

    .line 338
    iget-wide v3, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Lcom/android/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v2

    .line 339
    .local v2, intent:Landroid/content/Intent;
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/email/activity/setup/AccountSetupOptions;->startActivityForResult(Landroid/content/Intent;I)V

    .line 343
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 342
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->saveAccountAndFinish()V

    goto :goto_0
.end method

.method private saveAccountAndFinish()V
    .locals 1

    .prologue
    .line 362
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupOptions$4;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupOptions$4;-><init>(Lcom/android/email/activity/setup/AccountSetupOptions;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 378
    return-void
.end method

.method private varargs showErrorDialog(I[Ljava/lang/Object;)V
    .locals 1
    .parameter "msgResId"
    .parameter "args"

    .prologue
    .line 300
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupOptions$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupOptions$3;-><init>(Lcom/android/email/activity/setup/AccountSetupOptions;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupOptions;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 317
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 171
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v0

    .line 173
    .local v0, authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v0, :cond_0

    .line 174
    const/4 v1, 0x4

    const-string v2, "canceled"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 175
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 177
    :cond_0
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->finish()V

    .line 178
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->saveAccountAndFinish()V

    .line 351
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 199
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 190
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDonePressed:Z

    if-nez v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->onDone()V

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDonePressed:Z

    goto :goto_0

    .line 196
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->onBackPressed()V

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e000d
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 82
    const v10, 0x7f040010

    invoke-virtual {p0, v10}, Lcom/android/email/activity/setup/AccountSetupOptions;->setContentView(I)V

    .line 84
    const v10, 0x7f0e002b

    invoke-static {p0, v10}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    iput-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    .line 85
    const v10, 0x7f0e002e

    invoke-static {p0, v10}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    iput-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncWindowView:Landroid/widget/Spinner;

    .line 86
    const v10, 0x7f0e0013

    invoke-static {p0, v10}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    iput-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDefaultView:Landroid/widget/CheckBox;

    .line 87
    const v10, 0x7f0e002f

    invoke-static {p0, v10}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    iput-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    .line 88
    const v10, 0x7f0e0030

    invoke-static {p0, v10}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    iput-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    .line 89
    const v10, 0x7f0e0031

    invoke-static {p0, v10}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    iput-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarView:Landroid/widget/CheckBox;

    .line 90
    const v10, 0x7f0e0032

    invoke-static {p0, v10}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    iput-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncEmailView:Landroid/widget/CheckBox;

    .line 91
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncEmailView:Landroid/widget/CheckBox;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 92
    const v10, 0x7f0e0033

    invoke-static {p0, v10}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    iput-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mBackgroundAttachmentsView:Landroid/widget/CheckBox;

    .line 94
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mBackgroundAttachmentsView:Landroid/widget/CheckBox;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 95
    const v10, 0x7f0e000d

    invoke-static {p0, v10}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v10, 0x7f0e0010

    invoke-static {p0, v10}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v10, 0x7f0e002c

    invoke-static {p0, v10}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccountSyncWindowRow:Landroid/view/View;

    .line 102
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 103
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget-object v10, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v9, v10, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 104
    .local v9, protocol:Ljava/lang/String;
    const-string v10, "eas"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 105
    .local v3, eas:Z
    if-eqz v3, :cond_0

    .line 106
    const v7, 0x7f060003

    .line 107
    .local v7, frequencyValuesId:I
    const v5, 0x7f060002

    .line 112
    .local v5, frequencyEntriesId:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 113
    .local v6, frequencyValues:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 116
    .local v4, frequencyEntries:[Ljava/lang/CharSequence;
    array-length v10, v4

    new-array v1, v10, [Lcom/android/email/activity/setup/SpinnerOption;

    .line 117
    .local v1, checkFrequencies:[Lcom/android/email/activity/setup/SpinnerOption;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    array-length v10, v4

    if-ge v8, v10, :cond_1

    .line 118
    new-instance v10, Lcom/android/email/activity/setup/SpinnerOption;

    aget-object v11, v6, v8

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    aget-object v12, v4, v8

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v10, v1, v8

    .line 117
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 109
    .end local v1           #checkFrequencies:[Lcom/android/email/activity/setup/SpinnerOption;
    .end local v4           #frequencyEntries:[Ljava/lang/CharSequence;
    .end local v5           #frequencyEntriesId:I
    .end local v6           #frequencyValues:[Ljava/lang/CharSequence;
    .end local v7           #frequencyValuesId:I
    .end local v8           #i:I
    :cond_0
    const v7, 0x7f060001

    .line 110
    .restart local v7       #frequencyValuesId:I
    const/high16 v5, 0x7f06

    .restart local v5       #frequencyEntriesId:I
    goto :goto_0

    .line 122
    .restart local v1       #checkFrequencies:[Lcom/android/email/activity/setup/SpinnerOption;
    .restart local v4       #frequencyEntries:[Ljava/lang/CharSequence;
    .restart local v6       #frequencyValues:[Ljava/lang/CharSequence;
    .restart local v8       #i:I
    :cond_1
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v10, 0x1090008

    invoke-direct {v2, p0, v10, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 124
    .local v2, checkFrequenciesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v10, 0x1090009

    invoke-virtual {v2, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 126
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    invoke-virtual {v10, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 128
    if-eqz v3, :cond_2

    .line 129
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->enableEASSyncWindowSpinner()V

    .line 134
    :cond_2
    iget-boolean v10, v0, Lcom/android/emailcommon/provider/Account;->mIsDefault:Z

    if-nez v10, :cond_3

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isDefault()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 135
    :cond_3
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDefaultView:Landroid/widget/CheckBox;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 137
    :cond_4
    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getFlags()I

    move-result v10

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v11, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 139
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getSyncInterval()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 142
    if-eqz v3, :cond_5

    .line 144
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 145
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 146
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarView:Landroid/widget/CheckBox;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 147
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarView:Landroid/widget/CheckBox;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 149
    const v10, 0x7f0e0038

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/app/Activity;II)V

    .line 150
    const v10, 0x7f0e0039

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/app/Activity;II)V

    .line 154
    :cond_5
    const-string v10, "pop3"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 155
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mBackgroundAttachmentsView:Landroid/widget/CheckBox;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 156
    const v10, 0x7f0e003b

    const/16 v11, 0x8

    invoke-static {p0, v10, v11}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/app/Activity;II)V

    .line 161
    :cond_6
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isAutoSetup()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_8

    .line 163
    :cond_7
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->onDone()V

    .line 165
    :cond_8
    return-void

    .line 137
    :cond_9
    const/4 v10, 0x0

    goto :goto_2
.end method
