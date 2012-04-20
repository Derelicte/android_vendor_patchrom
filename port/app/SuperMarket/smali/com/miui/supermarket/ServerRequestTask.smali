.class public abstract Lcom/miui/supermarket/ServerRequestTask;
.super Landroid/os/AsyncTask;
.source "ServerRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;",
        ">;"
    }
.end annotation


# instance fields
.field protected mActivity:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/supermarket/ServerRequestTask;->mActivity:Landroid/content/Context;

    .line 13
    iput-object p1, p0, Lcom/miui/supermarket/ServerRequestTask;->mActivity:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method protected onPostExecute(Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 23
    sget-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->OK:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    if-ne p1, v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/miui/supermarket/ServerRequestTask;->onPostExecuteOK()V

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/ServerRequestTask;->onPostExecuteError(Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 9
    check-cast p1, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/ServerRequestTask;->onPostExecute(Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;)V

    return-void
.end method

.method protected onPostExecuteError(Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/supermarket/ServerRequestTask;->mActivity:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/supermarket/util/ErrorUtil;->showServerErrorHint(Landroid/content/Context;Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;)V

    .line 19
    return-void
.end method

.method protected abstract onPostExecuteOK()V
.end method
