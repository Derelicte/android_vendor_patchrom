.class public Lcom/miui/supermarket/MainTabActivity$InitTask;
.super Landroid/os/AsyncTask;
.source "MainTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/MainTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InitTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field final synthetic this$0:Lcom/miui/supermarket/MainTabActivity;


# direct methods
.method public constructor <init>(Lcom/miui/supermarket/MainTabActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/miui/supermarket/MainTabActivity$InitTask;->this$0:Lcom/miui/supermarket/MainTabActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/supermarket/MainTabActivity$InitTask;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 421
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/MainTabActivity$InitTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity$InitTask;->this$0:Lcom/miui/supermarket/MainTabActivity;

    invoke-static {v0}, Lcom/miui/supermarket/util/NetworkUtil;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/supermarket/MainTabActivity$InitTask;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 432
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 421
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/MainTabActivity$InitTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity$InitTask;->this$0:Lcom/miui/supermarket/MainTabActivity;

    iget-object v1, p0, Lcom/miui/supermarket/MainTabActivity$InitTask;->mNetworkInfo:Landroid/net/NetworkInfo;

    #calls: Lcom/miui/supermarket/MainTabActivity;->behaveOnNetworkInfo(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v1}, Lcom/miui/supermarket/MainTabActivity;->access$600(Lcom/miui/supermarket/MainTabActivity;Landroid/net/NetworkInfo;)V

    .line 427
    return-void
.end method
