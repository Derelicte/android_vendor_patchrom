.class public abstract Lcom/miui/supermarket/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field protected mBottomDownloadingView:Landroid/view/View;

.field private mEmptyHintView:Landroid/widget/TextView;

.field protected mHandler:Landroid/os/Handler;

.field protected mListView:Landroid/widget/ListView;

.field private mMiddleDownloadingView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    const-string v0, "BaseActivity"

    iput-object v0, p0, Lcom/miui/supermarket/BaseActivity;->LOGTAG:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/miui/supermarket/BaseActivity;->mListView:Landroid/widget/ListView;

    .line 19
    iput-object v1, p0, Lcom/miui/supermarket/BaseActivity;->mMiddleDownloadingView:Landroid/view/View;

    .line 20
    iput-object v1, p0, Lcom/miui/supermarket/BaseActivity;->mBottomDownloadingView:Landroid/view/View;

    .line 21
    iput-object v1, p0, Lcom/miui/supermarket/BaseActivity;->mEmptyHintView:Landroid/widget/TextView;

    .line 23
    iput-object v1, p0, Lcom/miui/supermarket/BaseActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected createListView()V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/miui/supermarket/BaseActivity;->getListViewResId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/supermarket/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/miui/supermarket/BaseActivity;->mListView:Landroid/widget/ListView;

    .line 50
    iget-object v1, p0, Lcom/miui/supermarket/BaseActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 51
    const v1, 0x7f0a0019

    invoke-virtual {p0, v1}, Lcom/miui/supermarket/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, emptyView:Landroid/view/View;
    iget-object v1, p0, Lcom/miui/supermarket/BaseActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 53
    return-void
.end method

.method protected getAdapter()Lcom/miui/supermarket/SuperMarketBaseListAdapter;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getContentViewResId()I
.end method

.method public getDownloadingView()Landroid/view/View;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/miui/supermarket/BaseActivity;->needRequestData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/supermarket/BaseActivity;->mMiddleDownloadingView:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/supermarket/BaseActivity;->mBottomDownloadingView:Landroid/view/View;

    goto :goto_0
.end method

.method public getEmptyHintView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/miui/supermarket/BaseActivity;->mEmptyHintView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected abstract getListViewResId()I
.end method

.method protected handleMessageImpl(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 72
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 74
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/supermarket/BaseActivity;->onDataRequest()V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected initHandler()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/miui/supermarket/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/supermarket/BaseActivity$1;-><init>(Lcom/miui/supermarket/BaseActivity;)V

    iput-object v0, p0, Lcom/miui/supermarket/BaseActivity;->mHandler:Landroid/os/Handler;

    .line 69
    return-void
.end method

.method protected needRequestData()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/miui/supermarket/BaseActivity;->getContentViewResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/supermarket/BaseActivity;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lcom/miui/supermarket/BaseActivity;->createListView()V

    .line 34
    const v0, 0x7f0a0037

    invoke-virtual {p0, v0}, Lcom/miui/supermarket/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/supermarket/BaseActivity;->mMiddleDownloadingView:Landroid/view/View;

    .line 35
    const v0, 0x7f0a001a

    invoke-virtual {p0, v0}, Lcom/miui/supermarket/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/supermarket/BaseActivity;->mBottomDownloadingView:Landroid/view/View;

    .line 36
    const v0, 0x7f0a0036

    invoke-virtual {p0, v0}, Lcom/miui/supermarket/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/supermarket/BaseActivity;->mEmptyHintView:Landroid/widget/TextView;

    .line 38
    invoke-virtual {p0}, Lcom/miui/supermarket/BaseActivity;->initHandler()V

    .line 39
    return-void
.end method

.method protected onDataRequest()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/miui/supermarket/BaseActivity;->getAdapter()Lcom/miui/supermarket/SuperMarketBaseListAdapter;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/supermarket/SuperMarketBaseListAdapter;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 61
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 45
    invoke-virtual {p0}, Lcom/miui/supermarket/BaseActivity;->requestDataOnResume()V

    .line 46
    return-void
.end method

.method protected requestData()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/supermarket/BaseActivity;->sendMessage(I)V

    .line 103
    return-void
.end method

.method protected requestDataOnResume()V
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/miui/supermarket/BaseActivity;->needRequestData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/miui/supermarket/BaseActivity;->requestData()V

    .line 87
    :cond_0
    return-void
.end method

.method protected sendMessage(I)V
    .locals 2
    .parameter "msgId"

    .prologue
    .line 95
    iget-object v1, p0, Lcom/miui/supermarket/BaseActivity;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/miui/supermarket/BaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 97
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/supermarket/BaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 99
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method
