.class Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;
.super Landroid/os/AsyncTask;
.source "XiaomiAccountSyncSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountInfoCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;

.field final synthetic this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;


# direct methods
.method public constructor <init>(Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;)V
    .locals 2
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 341
    new-instance v0, Lcom/miui/cloudservice/authenticator/AccountHelper;

    invoke-virtual {p1}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/cloudservice/authenticator/AccountHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;->mAccountHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;

    .line 342
    return-void
.end method

.method private fillAccountInfo(Lorg/json/JSONObject;)V
    .locals 16
    .parameter "resp"

    .prologue
    .line 383
    if-nez p1, :cond_0

    .line 428
    :goto_0
    return-void

    .line 391
    :cond_0
    :try_start_0
    const-string v7, ""

    .line 392
    .local v7, mid:Ljava/lang/String;
    const-string v12, "mid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 393
    const-string v12, "mid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 395
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;

    #getter for: Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static {v12}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->access$500(Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;)Landroid/accounts/AccountManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;

    iget-object v13, v13, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccount:Landroid/accounts/Account;

    const-string v14, "mid"

    invoke-virtual {v12, v13, v14, v7}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v8, ""

    .line 398
    .local v8, nickname:Ljava/lang/String;
    const-string v12, "nickname"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 399
    const-string v12, "nickname"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 401
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;

    #getter for: Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static {v12}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->access$500(Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;)Landroid/accounts/AccountManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;

    iget-object v13, v13, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccount:Landroid/accounts/Account;

    const-string v14, "nickname"

    invoke-virtual {v12, v13, v14, v8}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v4, emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v9, phones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v12, "c"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 406
    const-string v12, "c"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 407
    .local v2, contacts:Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, i:I
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    .local v6, max:I
    :goto_1
    if-ge v5, v6, :cond_6

    .line 408
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_3

    .line 409
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 410
    .local v1, contact:Lorg/json/JSONObject;
    const-string v12, "t"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 411
    .local v10, type:Ljava/lang/String;
    const-string v12, "v"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 412
    .local v11, value:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 407
    .end local v1           #contact:Lorg/json/JSONObject;
    .end local v10           #type:Ljava/lang/String;
    .end local v11           #value:Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 415
    .restart local v1       #contact:Lorg/json/JSONObject;
    .restart local v10       #type:Ljava/lang/String;
    .restart local v11       #value:Ljava/lang/String;
    :cond_4
    const-string v12, "EM"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 416
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 425
    .end local v1           #contact:Lorg/json/JSONObject;
    .end local v2           #contacts:Lorg/json/JSONArray;
    .end local v4           #emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #i:I
    .end local v6           #max:I
    .end local v7           #mid:Ljava/lang/String;
    .end local v8           #nickname:Ljava/lang/String;
    .end local v9           #phones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10           #type:Ljava/lang/String;
    .end local v11           #value:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 426
    .local v3, e:Lorg/json/JSONException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;

    invoke-virtual {v12}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;

    const v14, 0x7f07001c

    invoke-virtual {v13, v14}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/miui/cloudservice/authenticator/SysUtils;->showErrorMessage(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 417
    .end local v3           #e:Lorg/json/JSONException;
    .restart local v1       #contact:Lorg/json/JSONObject;
    .restart local v2       #contacts:Lorg/json/JSONArray;
    .restart local v4       #emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #i:I
    .restart local v6       #max:I
    .restart local v7       #mid:Ljava/lang/String;
    .restart local v8       #nickname:Ljava/lang/String;
    .restart local v9       #phones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10       #type:Ljava/lang/String;
    .restart local v11       #value:Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v12, "PH"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 418
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 423
    .end local v1           #contact:Lorg/json/JSONObject;
    .end local v2           #contacts:Lorg/json/JSONArray;
    .end local v5           #i:I
    .end local v6           #max:I
    .end local v10           #type:Ljava/lang/String;
    .end local v11           #value:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;

    #getter for: Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static {v12}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->access$500(Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;)Landroid/accounts/AccountManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;

    iget-object v13, v13, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccount:Landroid/accounts/Account;

    const-string v14, "EM"

    const-string v15, ";"

    invoke-static {v15, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;

    #getter for: Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static {v12}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->access$500(Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;)Landroid/accounts/AccountManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;

    iget-object v13, v13, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccount:Landroid/accounts/Account;

    const-string v14, "PH"

    const-string v15, ";"

    invoke-static {v15, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 337
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 5
    .parameter "pars"

    .prologue
    .line 374
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;->mAccountHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;

    invoke-virtual {v2}, Lcom/miui/cloudservice/authenticator/AccountHelper;->getParameter()Lcom/miui/cloudservice/authenticator/Parameter;

    move-result-object v0

    .line 375
    .local v0, params:Lcom/miui/cloudservice/authenticator/Parameter;
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;

    #getter for: Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static {v2}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->access$500(Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;)Landroid/accounts/AccountManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;

    iget-object v3, v3, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccount:Landroid/accounts/Account;

    const-string v4, "token"

    invoke-virtual {v2, v3, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, token:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 377
    const-string v2, "token"

    invoke-virtual {v0, v2, v1}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 379
    :cond_0
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;->mAccountHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;

    invoke-virtual {v2, v0}, Lcom/miui/cloudservice/authenticator/AccountHelper;->viewCard(Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 337
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 352
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 354
    :try_start_0
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;

    #getter for: Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->access$300(Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 356
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 357
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.account.expired"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    .local v0, expiredIntent:Landroid/content/Intent;
    const-string v2, "account"

    iget-object v3, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;

    iget-object v3, v3, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 359
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 360
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;

    invoke-virtual {v2, v0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->startActivity(Landroid/content/Intent;)V

    .line 370
    .end local v0           #expiredIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;->mAccountHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;

    invoke-virtual {v2}, Lcom/miui/cloudservice/authenticator/AccountHelper;->getResponse()Lorg/json/JSONObject;

    move-result-object v1

    .line 365
    .local v1, resp:Lorg/json/JSONObject;
    invoke-direct {p0, v1}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;->fillAccountInfo(Lorg/json/JSONObject;)V

    .line 366
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;

    #calls: Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->initValueAndContact()V
    invoke-static {v2}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->access$400(Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 367
    .end local v1           #resp:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 346
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 347
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings$AccountInfoCheckTask;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;

    #getter for: Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;->access$300(Lcom/miui/cloudservice/authenticator/XiaomiAccountSyncSettings;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 348
    return-void
.end method
