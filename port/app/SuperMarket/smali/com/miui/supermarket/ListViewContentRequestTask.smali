.class public abstract Lcom/miui/supermarket/ListViewContentRequestTask;
.super Lcom/miui/supermarket/ServerRequestTask;
.source "ListViewContentRequestTask.java"


# instance fields
.field protected mDownloadingView:Landroid/view/View;

.field protected mEmptyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 1
    .parameter "activity"
    .parameter "downloadingView"
    .parameter "emptyView"

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1}, Lcom/miui/supermarket/ServerRequestTask;-><init>(Landroid/content/Context;)V

    .line 12
    iput-object v0, p0, Lcom/miui/supermarket/ListViewContentRequestTask;->mDownloadingView:Landroid/view/View;

    .line 13
    iput-object v0, p0, Lcom/miui/supermarket/ListViewContentRequestTask;->mEmptyView:Landroid/widget/TextView;

    .line 17
    iput-object p2, p0, Lcom/miui/supermarket/ListViewContentRequestTask;->mDownloadingView:Landroid/view/View;

    .line 18
    iput-object p3, p0, Lcom/miui/supermarket/ListViewContentRequestTask;->mEmptyView:Landroid/widget/TextView;

    .line 19
    return-void
.end method


# virtual methods
.method protected onPostExecute(Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x0

    .line 29
    invoke-super {p0, p1}, Lcom/miui/supermarket/ServerRequestTask;->onPostExecute(Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;)V

    .line 31
    iget-object v1, p0, Lcom/miui/supermarket/ListViewContentRequestTask;->mDownloadingView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    iget-object v1, p0, Lcom/miui/supermarket/ListViewContentRequestTask;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33
    sget-object v1, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->OK:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    if-ne p1, v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/miui/supermarket/ListViewContentRequestTask;->mEmptyView:Landroid/widget/TextView;

    const v2, 0x7f06001d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 39
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/miui/supermarket/ListViewContentRequestTask;->mActivity:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/supermarket/util/ServerResponseUtil;->code2Res(Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, errMsg:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/supermarket/ListViewContentRequestTask;->mEmptyView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/supermarket/ListViewContentRequestTask;->mActivity:Landroid/content/Context;

    const v3, 0x7f060069

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/ListViewContentRequestTask;->onPostExecute(Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/supermarket/ListViewContentRequestTask;->mDownloadingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object v0, p0, Lcom/miui/supermarket/ListViewContentRequestTask;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    return-void
.end method
