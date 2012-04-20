.class Lcom/android/contacts/activities/TwelveKeyDialer$2;
.super Ljava/lang/Object;
.source "TwelveKeyDialer.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/TwelveKeyDialer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/TwelveKeyDialer;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/TwelveKeyDialer;)V
    .locals 0
    .parameter

    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 593
    if-lez p4, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/calllog/DialerListAdapter;
    invoke-static {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$400(Lcom/android/contacts/activities/TwelveKeyDialer;)Lcom/android/contacts/calllog/DialerListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/calllog/DialerListAdapter;->getSPDividerItemPos()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/calllog/DialerListAdapter;
    invoke-static {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$400(Lcom/android/contacts/activities/TwelveKeyDialer;)Lcom/android/contacts/calllog/DialerListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/calllog/DialerListAdapter;->getSPDividerItemPos()I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 595
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mYellowPageHeaderView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$800(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 596
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mYellowPageCountView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$900(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/calllog/DialerListAdapter;
    invoke-static {v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$400(Lcom/android/contacts/activities/TwelveKeyDialer;)Lcom/android/contacts/calllog/DialerListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/calllog/DialerListAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/calllog/DialerListAdapter;
    invoke-static {v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$400(Lcom/android/contacts/activities/TwelveKeyDialer;)Lcom/android/contacts/calllog/DialerListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/calllog/DialerListAdapter;->getSPDividerItemPos()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    :goto_0
    return-void

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mYellowPageHeaderView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$800(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 604
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->setSoftKeyVisibility(Z)V

    .line 609
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mAsyncDataLoader:Lcom/android/contacts/calllog/AsyncDataLoader;
    invoke-static {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$1000(Lcom/android/contacts/activities/TwelveKeyDialer;)Lcom/android/contacts/calllog/AsyncDataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/calllog/AsyncDataLoader;->pause()V

    .line 614
    :goto_0
    return-void

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mAsyncDataLoader:Lcom/android/contacts/calllog/AsyncDataLoader;
    invoke-static {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$1000(Lcom/android/contacts/activities/TwelveKeyDialer;)Lcom/android/contacts/calllog/AsyncDataLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$2;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mIsTelocationEnable:Z
    invoke-static {v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$1100(Lcom/android/contacts/activities/TwelveKeyDialer;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/calllog/AsyncDataLoader;->resume(Z)V

    goto :goto_0
.end method
