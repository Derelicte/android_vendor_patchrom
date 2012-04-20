.class public Lcom/google/android/gsf/login/LoginActivity;
.super Lcom/google/android/gsf/login/AddAccountActivity;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/LoginActivity$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/gsf/login/AddAccountActivity;-><init>()V

    .line 80
    return-void
.end method


# virtual methods
.method protected handleBack(IILandroid/content/Intent;Lcom/google/android/gsf/loginservice/GLSUser$Status;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x3ff

    const/16 v2, 0x3fe

    .line 271
    iget-boolean v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mAddAccount:Z

    if-nez v0, :cond_0

    .line 273
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gsf/login/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 274
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->finish()V

    .line 340
    :goto_0
    return-void

    .line 278
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 336
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/login/LoginActivity;->setResult(I)V

    .line 337
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->finish()V

    goto :goto_0

    .line 283
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/UsernamePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x402

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 289
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/SyncIntroActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 290
    const/16 v1, 0x3ed

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 294
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusQueryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 301
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusQueryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 306
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/NameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3fa

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 315
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusFaqActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 319
    :sswitch_6
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserSelectedGooglePlus:Z

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->PICASA_USER:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 322
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PicassaInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x405

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 325
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusFaqActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 329
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusQueryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 278
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_0
        0x3ec -> :sswitch_0
        0x3f2 -> :sswitch_6
        0x3fa -> :sswitch_2
        0x3fc -> :sswitch_1
        0x3fe -> :sswitch_3
        0x3ff -> :sswitch_4
        0x405 -> :sswitch_5
    .end sparse-switch
.end method

.method public handleStatus(Lcom/google/android/gsf/loginservice/GLSUser$Status;)V
    .locals 3
    .parameter

    .prologue
    .line 50
    .line 51
    sget-object v0, Lcom/google/android/gsf/login/LoginActivity$1;->$SwitchMap$com$google$android$gsf$loginservice$GLSUser$Status:[I

    invoke-virtual {p1}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/ShowErrorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    const/16 v1, 0x3f1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 82
    :goto_0
    return-void

    .line 54
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GLSUser;->isBrowser()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/UsernamePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x402

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/BrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    const-string v1, "authAccount"

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const/16 v1, 0x3ec

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 66
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/CaptchaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 71
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    const/16 v1, 0x403

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    const/16 v3, 0x3ec

    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 96
    if-ne p2, v1, :cond_0

    .line 98
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/LoginActivity;->setResult(I)V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->finish()V

    .line 267
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-static {p3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->fromExtra(Landroid/content/Intent;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v0

    .line 104
    if-nez p2, :cond_1

    .line 105
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gsf/login/LoginActivity;->handleBack(IILandroid/content/Intent;Lcom/google/android/gsf/loginservice/GLSUser$Status;)V

    goto :goto_0

    .line 109
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 263
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/AddAccountActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 111
    :sswitch_0
    if-ne p2, v5, :cond_2

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/BrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 122
    :cond_2
    :sswitch_1
    if-ne p2, v2, :cond_3

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 126
    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/LoginActivity;->setResult(I)V

    .line 127
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->finish()V

    goto :goto_0

    .line 133
    :sswitch_2
    if-ne p2, v2, :cond_4

    .line 134
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/LoginActivity;->setResult(I)V

    .line 138
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->finish()V

    goto :goto_0

    .line 136
    :cond_4
    invoke-virtual {p0, v4, p3}, Lcom/google/android/gsf/login/LoginActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 143
    :sswitch_3
    iget-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mConfirmCredentials:Z

    if-eqz v1, :cond_5

    .line 145
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/LoginActivity;->accountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {p0, v2, p3}, Lcom/google/android/gsf/login/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 147
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->finish()V

    goto :goto_0

    .line 151
    :cond_5
    if-ne p2, v2, :cond_8

    .line 152
    iget-boolean v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mAddAccount:Z

    if-nez v0, :cond_6

    .line 154
    iput-boolean v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mCallAuthenticatorResponseOnFinish:Z

    .line 155
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/LoginActivity;->accountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0, v2, p3}, Lcom/google/android/gsf/login/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    invoke-static {p0, v0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->onIntentDone(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->finish()V

    goto :goto_0

    .line 165
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->isESEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAllowGooglePlus:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mHasGooglePlus:Z

    if-nez v0, :cond_7

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusQueryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3fe

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 172
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->afterAddAccount()V

    goto/16 :goto_0

    .line 175
    :cond_8
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$Status;->BAD_AUTHENTICATION:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-ne v0, v1, :cond_9

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/ShowErrorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    const/16 v1, 0x409

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 179
    :cond_9
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/LoginActivity;->handleStatus(Lcom/google/android/gsf/loginservice/GLSUser$Status;)V

    goto/16 :goto_0

    .line 186
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/SyncIntroActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    const/16 v1, 0x3ed

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 192
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GLSUser;->isBrowser()Z

    move-result v0

    if-nez v0, :cond_b

    .line 194
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/UsernamePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x402

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 197
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/BrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 204
    :sswitch_6
    if-ne p2, v5, :cond_c

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/BrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 207
    :cond_c
    const/4 v0, 0x5

    if-ne p2, v0, :cond_d

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/UsernamePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x402

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 210
    :cond_d
    if-ne p2, v2, :cond_e

    .line 212
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 216
    :cond_e
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/login/LoginActivity;->setResult(I)V

    .line 217
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->finish()V

    goto/16 :goto_0

    .line 222
    :sswitch_7
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserSelectedGooglePlus:Z

    if-eqz v0, :cond_f

    .line 223
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/NameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3fa

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 227
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->afterAddAccount()V

    goto/16 :goto_0

    .line 232
    :sswitch_8
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->PICASA_USER:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 234
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PicassaInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x405

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 237
    :cond_10
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3f2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 243
    :sswitch_9
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iput-boolean v1, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mNameActivityCompleted:Z

    .line 244
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserSelectedGooglePlus:Z

    if-eqz v0, :cond_11

    .line 245
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusFaqActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3ff

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 248
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->afterAddAccount()V

    goto/16 :goto_0

    .line 253
    :sswitch_a
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3f2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 258
    :sswitch_b
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->afterAddAccount()V

    goto/16 :goto_0

    .line 109
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_3
        0x3ec -> :sswitch_1
        0x3f1 -> :sswitch_6
        0x3f2 -> :sswitch_b
        0x3fa -> :sswitch_9
        0x3fc -> :sswitch_4
        0x3fe -> :sswitch_7
        0x3ff -> :sswitch_8
        0x402 -> :sswitch_0
        0x403 -> :sswitch_2
        0x405 -> :sswitch_a
        0x409 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/AddAccountActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    if-nez p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->fromIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v0

    .line 42
    .local v0, status:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/LoginActivity;->handleStatus(Lcom/google/android/gsf/loginservice/GLSUser$Status;)V

    .line 44
    .end local v0           #status:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    :cond_0
    return-void
.end method
