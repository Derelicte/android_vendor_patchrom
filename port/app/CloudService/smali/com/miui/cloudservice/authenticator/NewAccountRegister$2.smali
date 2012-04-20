.class Lcom/miui/cloudservice/authenticator/NewAccountRegister$2;
.super Landroid/os/AsyncTask;
.source "NewAccountRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/cloudservice/authenticator/NewAccountRegister;->onClick(Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/miui/cloudservice/authenticator/NewAccountRegister;


# direct methods
.method constructor <init>(Lcom/miui/cloudservice/authenticator/NewAccountRegister;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister$2;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountRegister;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 180
    check-cast p1, [Lcom/miui/cloudservice/authenticator/Parameter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/cloudservice/authenticator/NewAccountRegister$2;->doInBackground([Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;
    .locals 2
    .parameter "params"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister$2;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountRegister;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;
    invoke-static {v0}, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->access$100(Lcom/miui/cloudservice/authenticator/NewAccountRegister;)Lcom/miui/cloudservice/authenticator/AccountHelper;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/miui/cloudservice/authenticator/AccountHelper;->createAccByPhone(Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 180
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/cloudservice/authenticator/NewAccountRegister$2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 9
    .parameter "result"

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 192
    :try_start_0
    iget-object v6, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister$2;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountRegister;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mNextButton:Landroid/widget/Button;
    invoke-static {v6}, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->access$200(Lcom/miui/cloudservice/authenticator/NewAccountRegister;)Landroid/widget/Button;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 195
    iget-object v6, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister$2;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountRegister;

    invoke-virtual {v6}, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/miui/cloudservice/authenticator/SysUtils;->showErrorMessage(Landroid/app/Activity;Ljava/lang/String;)V

    .line 220
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v6, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister$2;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountRegister;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;
    invoke-static {v6}, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->access$100(Lcom/miui/cloudservice/authenticator/NewAccountRegister;)Lcom/miui/cloudservice/authenticator/AccountHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/cloudservice/authenticator/AccountHelper;->getResponse()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 199
    .local v4, resp:Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 200
    .local v5, token:Ljava/lang/String;
    const/4 v3, 0x0

    .line 201
    .local v3, nickname:Ljava/lang/String;
    const/4 v1, 0x0

    .line 203
    .local v1, mid:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 204
    :try_start_1
    const-string v6, "token"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 205
    const-string v6, "nickname"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 206
    const-string v6, "mid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 213
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister$2;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountRegister;

    invoke-virtual {v6}, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/miui/cloudservice/authenticator/Authenticator$NewAccountRegisterActivity;

    .line 214
    .local v2, newAccountActivity:Lcom/miui/cloudservice/authenticator/Authenticator$NewAccountRegisterActivity;
    invoke-static {v2, v1, v5, v3}, Lcom/miui/cloudservice/authenticator/SysUtils;->login(Landroid/accounts/AccountAuthenticatorActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const v6, 0x7f07001d

    const/4 v7, 0x0

    invoke-static {v2, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 217
    .end local v1           #mid:Ljava/lang/String;
    .end local v2           #newAccountActivity:Lcom/miui/cloudservice/authenticator/Authenticator$NewAccountRegisterActivity;
    .end local v3           #nickname:Ljava/lang/String;
    .end local v4           #resp:Lorg/json/JSONObject;
    .end local v5           #token:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 208
    .restart local v1       #mid:Ljava/lang/String;
    .restart local v3       #nickname:Ljava/lang/String;
    .restart local v4       #resp:Lorg/json/JSONObject;
    .restart local v5       #token:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 209
    .local v0, e:Lorg/json/JSONException;
    iget-object v6, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister$2;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountRegister;

    invoke-virtual {v6}, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister$2;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountRegister;

    const v8, 0x7f07001c

    invoke-virtual {v7, v8}, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/cloudservice/authenticator/SysUtils;->showErrorMessage(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 185
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister$2;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountRegister;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mNextButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->access$200(Lcom/miui/cloudservice/authenticator/NewAccountRegister;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 186
    return-void
.end method
