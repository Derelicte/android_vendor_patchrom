.class public abstract Lcom/miui/supermarket/SuperMarketBaseListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SuperMarketBaseListAdapter.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mInfoList:Ljava/util/ArrayList;

.field protected mLayoutId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 1
    .parameter "context"
    .parameter "infoList"
    .parameter "layoutId"

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/miui/supermarket/SuperMarketBaseListAdapter;->mContext:Landroid/content/Context;

    .line 12
    iput-object v0, p0, Lcom/miui/supermarket/SuperMarketBaseListAdapter;->mInfoList:Ljava/util/ArrayList;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/supermarket/SuperMarketBaseListAdapter;->mLayoutId:I

    .line 16
    iput-object p1, p0, Lcom/miui/supermarket/SuperMarketBaseListAdapter;->mContext:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/miui/supermarket/SuperMarketBaseListAdapter;->mInfoList:Ljava/util/ArrayList;

    .line 18
    iput p3, p0, Lcom/miui/supermarket/SuperMarketBaseListAdapter;->mLayoutId:I

    .line 19
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/supermarket/SuperMarketBaseListAdapter;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 28
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/supermarket/SuperMarketBaseListAdapter;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/supermarket/SuperMarketBaseListAdapter;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 33
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation
.end method
