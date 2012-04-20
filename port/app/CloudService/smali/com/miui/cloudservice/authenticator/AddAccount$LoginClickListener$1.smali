.class Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener$1;
.super Landroid/os/AsyncTask;
.source "AddAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/miui/cloudservice/authenticator/Parameter;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;

.field final synthetic val$helper:Lcom/miui/cloudservice/authenticator/AccountHelper;


# direct methods
.method constructor <init>(Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;Lcom/miui/cloudservice/authenticator/AccountHelper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener$1;->this$1:Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;

    iput-object p2, p0, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener$1;->val$helper:Lcom/miui/cloudservice/authenticator/AccountHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    check-cast p1, [Lcom/miui/cloudservice/authenticator/Parameter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener$1;->doInBackground([Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;
    .locals 2
    .parameter "params"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener$1;->val$helper:Lcom/miui/cloudservice/authenticator/AccountHelper;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/miui/cloudservice/authenticator/AccountHelper;->login(Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 154
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 9
    .parameter "result"

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 166
    :try_start_0
    iget-object v6, p0, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener$1;->this$1:Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;

    iget-object v6, v6, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccount;

    const/4 v7, 0x0

    #calls: Lcom/miui/cloudservice/authenticator/AddAccount;->setLoginButtonStyles(Z)V
    invoke-static {v6, v7}, Lcom/miui/cloudservice/authenticator/AddAccount;->access$700(Lcom/miui/cloudservice/authenticator/AddAccount;Z)V

    .line 167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 168
    iget-object v6, p0, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener$1;->this$1:Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;

    iget-object v6, v6, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccount;

    invoke-virtual {v6}, Lcom/miui/cloudservice/authenticator/AddAccount;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/miui/cloudservice/authenticator/SysUtils;->showErrorMessage(Landroid/app/Activity;Ljava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v6, p0, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener$1;->val$helper:Lcom/miui/cloudservice/authenticator/AccountHelper;

    invoke-virtual {v6}, Lcom/miui/cloudservice/authenticator/AccountHelper;->getResponse()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 173
    .local v4, resp:Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 174
    .local v5, token:Ljava/lang/String;
    const/4 v3, 0x0

    .line 175
    .local v3, nickname:Ljava/lang/String;
    const/4 v2, 0x0

    .line 177
    .local v2, mid:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 178
    :try_start_1
    const-string v6, "token"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 179
    const-string v6, "nickname"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    const-string v6, "mid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 187
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener$1;->this$1:Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;

    iget-object v6, v6, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccount;

    invoke-virtual {v6}, Lcom/miui/cloudservice/authenticator/AddAccount;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/miui/cloudservice/authenticator/Authenticator$AddAccountActivity;

    .line 188
    .local v0, activity:Lcom/miui/cloudservice/authenticator/Authenticator$AddAccountActivity;
    invoke-static {v0, v2, v5, v3}, Lcom/miui/cloudservice/authenticator/SysUtils;->login(Landroid/accounts/AccountAuthenticatorActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    .end local v0           #activity:Lcom/miui/cloudservice/authenticator/Authenticator$AddAccountActivity;
    .end local v2           #mid:Ljava/lang/String;
    .end local v3           #nickname:Ljava/lang/String;
    .end local v4           #resp:Lorg/json/JSONObject;
    .end local v5           #token:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 182
    .restart local v2       #mid:Ljava/lang/String;
    .restart local v3       #nickname:Ljava/lang/String;
    .restart local v4       #resp:Lorg/json/JSONObject;
    .restart local v5       #token:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 183
    .local v1, e:Lorg/json/JSONException;
    iget-object v6, p0, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener$1;->this$1:Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;

    iget-object v6, v6, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccount;

    invoke-virtual {v6}, Lcom/miui/cloudservice/authenticator/AddAccount;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener$1;->this$1:Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;

    iget-object v7, v7, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccount;

    const v8, 0x7f07001c

    invoke-virtual {v7, v8}, Lcom/miui/cloudservice/authenticator/AddAccount;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/cloudservice/authenticator/SysUtils;->showErrorMessage(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener$1;->this$1:Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;

    iget-object v0, v0, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccount;

    const/4 v1, 0x1

    #calls: Lcom/miui/cloudservice/authenticator/AddAccount;->setLoginButtonStyles(Z)V
    invoke-static {v0, v1}, Lcom/miui/cloudservice/authenticator/AddAccount;->access$700(Lcom/miui/cloudservice/authenticator/AddAccount;Z)V

    .line 159
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 160
    return-void
.end method
