.class Lcom/miui/cloudservice/authenticator/NewAccountVercode$1;
.super Landroid/os/AsyncTask;
.source "NewAccountVercode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/cloudservice/authenticator/NewAccountVercode;->onClick(Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/miui/cloudservice/authenticator/NewAccountVercode;


# direct methods
.method constructor <init>(Lcom/miui/cloudservice/authenticator/NewAccountVercode;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode$1;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountVercode;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 198
    check-cast p1, [Lcom/miui/cloudservice/authenticator/Parameter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/cloudservice/authenticator/NewAccountVercode$1;->doInBackground([Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;
    .locals 2
    .parameter "params"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode$1;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountVercode;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;
    invoke-static {v0}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->access$400(Lcom/miui/cloudservice/authenticator/NewAccountVercode;)Lcom/miui/cloudservice/authenticator/AccountHelper;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/miui/cloudservice/authenticator/AccountHelper;->getVerifyCode(Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 198
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/cloudservice/authenticator/NewAccountVercode$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 211
    :try_start_0
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode$1;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountVercode;

    const/4 v3, 0x0

    #calls: Lcom/miui/cloudservice/authenticator/NewAccountVercode;->updateLoginStatus(I)V
    invoke-static {v2, v3}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->access$300(Lcom/miui/cloudservice/authenticator/NewAccountVercode;I)V

    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 214
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode$1;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountVercode;

    invoke-virtual {v2}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/miui/cloudservice/authenticator/SysUtils;->showErrorMessage(Landroid/app/Activity;Ljava/lang/String;)V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode$1;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountVercode;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;
    invoke-static {v2}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->access$400(Lcom/miui/cloudservice/authenticator/NewAccountVercode;)Lcom/miui/cloudservice/authenticator/AccountHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/cloudservice/authenticator/AccountHelper;->getResponse()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 219
    .local v1, resp:Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 220
    :try_start_1
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode$1;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountVercode;

    const-string v3, "mid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mMid:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->access$502(Lcom/miui/cloudservice/authenticator/NewAccountVercode;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode$1;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountVercode;

    const-string v3, "token"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mToken:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->access$602(Lcom/miui/cloudservice/authenticator/NewAccountVercode;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode$1;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountVercode;

    const-string v3, "salt"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mSalt:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->access$702(Lcom/miui/cloudservice/authenticator/NewAccountVercode;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Lorg/json/JSONException;
    :try_start_2
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode$1;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountVercode;

    invoke-virtual {v2}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode$1;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountVercode;

    const v4, 0x7f07001c

    invoke-virtual {v3, v4}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/cloudservice/authenticator/SysUtils;->showErrorMessage(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 227
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #resp:Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 202
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode$1;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountVercode;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mCountDownHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->access$200(Lcom/miui/cloudservice/authenticator/NewAccountVercode;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->access$000()I

    move-result v2

    invoke-static {}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->access$100()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 203
    .local v0, mess:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode$1;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountVercode;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountVercode;->mCountDownHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->access$200(Lcom/miui/cloudservice/authenticator/NewAccountVercode;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 204
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/NewAccountVercode$1;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountVercode;

    const v2, 0x7f070038

    #calls: Lcom/miui/cloudservice/authenticator/NewAccountVercode;->updateLoginStatus(I)V
    invoke-static {v1, v2}, Lcom/miui/cloudservice/authenticator/NewAccountVercode;->access$300(Lcom/miui/cloudservice/authenticator/NewAccountVercode;I)V

    .line 205
    return-void
.end method
