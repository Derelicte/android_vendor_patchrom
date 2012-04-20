.class Lcom/android/updater/ShareActivity$GetShareMessageTask;
.super Lmiui/os/AsyncTaskWithProgress;
.source "ShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/ShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetShareMessageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/os/AsyncTaskWithProgress",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/ShareActivity;


# direct methods
.method public constructor <init>(Lcom/android/updater/ShareActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter "dialog"

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/updater/ShareActivity$GetShareMessageTask;->this$0:Lcom/android/updater/ShareActivity;

    .line 411
    invoke-direct {p0, p2}, Lmiui/os/AsyncTaskWithProgress;-><init>(Landroid/app/ProgressDialog;)V

    .line 412
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 408
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/updater/ShareActivity$GetShareMessageTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "params"

    .prologue
    .line 425
    const/4 v4, 0x0

    aget-object v3, p1, v4

    .line 426
    .local v3, rank:Ljava/lang/String;
    new-instance v2, Lcom/android/updater/ShareActivity$MessageChecker;

    iget-object v4, p0, Lcom/android/updater/ShareActivity$GetShareMessageTask;->this$0:Lcom/android/updater/ShareActivity;

    iget-object v5, p0, Lcom/android/updater/ShareActivity$GetShareMessageTask;->this$0:Lcom/android/updater/ShareActivity;

    invoke-virtual {v5}, Lcom/android/updater/ShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v4, v5, v3}, Lcom/android/updater/ShareActivity$MessageChecker;-><init>(Lcom/android/updater/ShareActivity;Landroid/content/Context;Ljava/lang/String;)V

    .line 428
    .local v2, messageChecker:Lcom/android/updater/ShareActivity$MessageChecker;
    :try_start_0
    invoke-virtual {v2}, Lcom/android/updater/ShareActivity$MessageChecker;->checkUpdates()Ljava/lang/StringBuffer;

    move-result-object v0

    .line 429
    .local v0, buf:Ljava/lang/StringBuffer;
    if-eqz v0, :cond_0

    .line 430
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 431
    .local v1, mainJSONObject:Lorg/json/JSONObject;
    const-string v4, "message"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 437
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v1           #mainJSONObject:Lorg/json/JSONObject;
    :goto_0
    return-object v4

    .line 435
    :catch_0
    move-exception v4

    .line 437
    :cond_0
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 434
    :catch_1
    move-exception v4

    goto :goto_1

    .line 433
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 408
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/updater/ShareActivity$GetShareMessageTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 416
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/updater/ShareActivity$GetShareMessageTask;->this$0:Lcom/android/updater/ShareActivity;

    #setter for: Lcom/android/updater/ShareActivity;->mShareContentString:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/updater/ShareActivity;->access$302(Lcom/android/updater/ShareActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 418
    iget-object v0, p0, Lcom/android/updater/ShareActivity$GetShareMessageTask;->this$0:Lcom/android/updater/ShareActivity;

    #calls: Lcom/android/updater/ShareActivity;->update()V
    invoke-static {v0}, Lcom/android/updater/ShareActivity;->access$400(Lcom/android/updater/ShareActivity;)V

    .line 420
    :cond_0
    invoke-super {p0, p1}, Lmiui/os/AsyncTaskWithProgress;->onPostExecute(Ljava/lang/Object;)V

    .line 421
    return-void
.end method
