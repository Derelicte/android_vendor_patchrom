.class Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;
.super Lmiui/os/AsyncTaskWithProgress;
.source "XiaomiAccountBind.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/os/AsyncTaskWithProgress",
        "<",
        "Lcom/miui/cloudservice/authenticator/Parameter;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;

.field final synthetic val$helper:Lcom/miui/cloudservice/authenticator/AccountHelper;


# direct methods
.method constructor <init>(Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;Landroid/content/Context;IIZLcom/miui/cloudservice/authenticator/AccountHelper;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;

    iput-object p6, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;->val$helper:Lcom/miui/cloudservice/authenticator/AccountHelper;

    invoke-direct {p0, p2, p3, p4, p5}, Lmiui/os/AsyncTaskWithProgress;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    check-cast p1, [Lcom/miui/cloudservice/authenticator/Parameter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;->doInBackground([Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 203
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;

    #getter for: Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mBindType:I
    invoke-static {v0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->access$000(Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;->val$helper:Lcom/miui/cloudservice/authenticator/AccountHelper;

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Lcom/miui/cloudservice/authenticator/AccountHelper;->bindPhone(Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;

    #getter for: Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mBindType:I
    invoke-static {v0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->access$000(Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 206
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;->val$helper:Lcom/miui/cloudservice/authenticator/AccountHelper;

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Lcom/miui/cloudservice/authenticator/AccountHelper;->bindEmail(Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;->val$helper:Lcom/miui/cloudservice/authenticator/AccountHelper;

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Lcom/miui/cloudservice/authenticator/AccountHelper;->bindNickname(Lcom/miui/cloudservice/authenticator/Parameter;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 136
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 10
    .parameter "result"

    .prologue
    const/4 v9, 0x2

    .line 139
    invoke-super {p0, p1}, Lmiui/os/AsyncTaskWithProgress;->onPostExecute(Ljava/lang/Object;)V

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 141
    iget-object v7, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;

    invoke-virtual {v7}, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/miui/cloudservice/authenticator/SysUtils;->showErrorMessage(Landroid/app/Activity;Ljava/lang/String;)V

    .line 199
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v7, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;

    invoke-virtual {v7}, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 145
    .local v0, activity:Landroid/app/Activity;
    iget-object v7, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;

    #getter for: Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mBindType:I
    invoke-static {v7}, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->access$000(Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;)I

    move-result v7

    if-nez v7, :cond_1

    .line 146
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 149
    :cond_1
    new-instance v3, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1$1;

    invoke-direct {v3, p0, v0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1$1;-><init>(Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;Landroid/app/Activity;)V

    .line 156
    .local v3, onClickListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v7, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;->val$helper:Lcom/miui/cloudservice/authenticator/AccountHelper;

    invoke-virtual {v7}, Lcom/miui/cloudservice/authenticator/AccountHelper;->getResponse()Lorg/json/JSONObject;

    move-result-object v4

    .line 157
    .local v4, resp:Lorg/json/JSONObject;
    if-eqz v4, :cond_2

    .line 162
    :cond_2
    iget-object v7, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;

    #getter for: Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mBindType:I
    invoke-static {v7}, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->access$000(Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 163
    if-eqz v4, :cond_4

    .line 164
    const-string v5, ""

    .line 165
    .local v5, url:Ljava/lang/String;
    const-string v7, "url"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 167
    :try_start_0
    const-string v7, "url"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 174
    :cond_3
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 175
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 176
    .local v6, urltobrowse:Landroid/net/Uri;
    new-instance v3, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1$2;

    .end local v3           #onClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {v3, p0, v6, v0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1$2;-><init>(Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;Landroid/net/Uri;Landroid/app/Activity;)V

    .line 188
    .end local v5           #url:Ljava/lang/String;
    .end local v6           #urltobrowse:Landroid/net/Uri;
    .restart local v3       #onClickListener:Landroid/content/DialogInterface$OnClickListener;
    :cond_4
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;

    #getter for: Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mBindType:I
    invoke-static {v7}, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->access$000(Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;)I

    move-result v7

    if-ne v7, v9, :cond_5

    const v7, 0x7f070057

    :goto_2
    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    iget-object v7, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;

    #getter for: Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->mBindType:I
    invoke-static {v7}, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->access$000(Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;)I

    move-result v7

    if-ne v7, v9, :cond_6

    const v7, 0x7f070058

    :goto_3
    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f07005b

    invoke-virtual {v7, v8, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 197
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 168
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .restart local v5       #url:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 169
    .local v2, e:Lorg/json/JSONException;
    const-string v5, ""

    .line 170
    const-string v7, "XiaomiAccountBind"

    const-string v8, "Theres an error in your JSON File: empty mid"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 188
    .end local v2           #e:Lorg/json/JSONException;
    .end local v5           #url:Ljava/lang/String;
    :cond_5
    const v7, 0x7f070059

    goto :goto_2

    :cond_6
    const v7, 0x7f07005a

    goto :goto_3
.end method
