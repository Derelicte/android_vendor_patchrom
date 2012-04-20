.class Lcom/miui/cloudservice/authenticator/NewAccountRegister$1;
.super Landroid/os/AsyncTask;
.source "NewAccountRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/cloudservice/authenticator/NewAccountRegister;->onFocusChange(Landroid/view/View;Z)V
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
    .line 127
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister$1;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountRegister;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    check-cast p1, [Lcom/miui/cloudservice/authenticator/Parameter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/cloudservice/authenticator/NewAccountRegister$1;->doInBackground([Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;
    .locals 2
    .parameter "params"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister$1;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountRegister;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;
    invoke-static {v0}, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->access$100(Lcom/miui/cloudservice/authenticator/NewAccountRegister;)Lcom/miui/cloudservice/authenticator/AccountHelper;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/miui/cloudservice/authenticator/AccountHelper;->checkNickname(Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/cloudservice/authenticator/NewAccountRegister$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister$1;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountRegister;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mNickname:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->access$000(Lcom/miui/cloudservice/authenticator/NewAccountRegister;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister$1;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountRegister;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;
    invoke-static {v2}, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->access$100(Lcom/miui/cloudservice/authenticator/NewAccountRegister;)Lcom/miui/cloudservice/authenticator/AccountHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/cloudservice/authenticator/AccountHelper;->getResponse()Lorg/json/JSONObject;

    move-result-object v1

    .line 139
    .local v1, resp:Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 140
    :try_start_0
    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 141
    .local v0, checkResult:Z
    if-nez v0, :cond_0

    .line 142
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister$1;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountRegister;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountRegister;->mNickname:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->access$000(Lcom/miui/cloudservice/authenticator/NewAccountRegister;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/cloudservice/authenticator/NewAccountRegister$1;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountRegister;

    const v4, 0x7f070035

    invoke-virtual {v3, v4}, Lcom/miui/cloudservice/authenticator/NewAccountRegister;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    .end local v0           #checkResult:Z
    :catch_0
    move-exception v2

    goto :goto_0
.end method
