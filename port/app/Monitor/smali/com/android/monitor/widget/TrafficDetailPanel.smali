.class public Lcom/android/monitor/widget/TrafficDetailPanel;
.super Landroid/widget/FrameLayout;
.source "TrafficDetailPanel.java"


# instance fields
.field private final mCols:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mRows:I

.field private mTableCells:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x3

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 17
    iput v0, p0, Lcom/android/monitor/widget/TrafficDetailPanel;->mRows:I

    .line 18
    iput v0, p0, Lcom/android/monitor/widget/TrafficDetailPanel;->mCols:I

    .line 21
    invoke-direct {p0}, Lcom/android/monitor/widget/TrafficDetailPanel;->init()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x3

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput v0, p0, Lcom/android/monitor/widget/TrafficDetailPanel;->mRows:I

    .line 18
    iput v0, p0, Lcom/android/monitor/widget/TrafficDetailPanel;->mCols:I

    .line 26
    invoke-direct {p0}, Lcom/android/monitor/widget/TrafficDetailPanel;->init()V

    .line 27
    return-void
.end method

.method private createTrafficTable()V
    .locals 6

    .prologue
    .line 36
    const v3, 0x7f07001c

    invoke-virtual {p0, v3}, Lcom/android/monitor/widget/TrafficDetailPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 37
    .local v1, table:Landroid/widget/LinearLayout;
    const/16 v3, 0x9

    new-array v3, v3, [Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/monitor/widget/TrafficDetailPanel;->mTableCells:[Landroid/widget/TextView;

    .line 38
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 39
    iget-object v3, p0, Lcom/android/monitor/widget/TrafficDetailPanel;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030009

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 40
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/monitor/widget/TrafficDetailPanel;->mTableCells:[Landroid/widget/TextView;

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v5, v3, 0x0

    const v3, 0x7f07001d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v5

    .line 41
    iget-object v4, p0, Lcom/android/monitor/widget/TrafficDetailPanel;->mTableCells:[Landroid/widget/TextView;

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v5, v3, 0x1

    const v3, 0x7f07001e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v5

    .line 42
    iget-object v4, p0, Lcom/android/monitor/widget/TrafficDetailPanel;->mTableCells:[Landroid/widget/TextView;

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v5, v3, 0x2

    const v3, 0x7f07001f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v5

    .line 43
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    .end local v2           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/monitor/widget/TrafficDetailPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/monitor/widget/TrafficDetailPanel;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 31
    iget-object v0, p0, Lcom/android/monitor/widget/TrafficDetailPanel;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030008

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    invoke-direct {p0}, Lcom/android/monitor/widget/TrafficDetailPanel;->createTrafficTable()V

    .line 33
    return-void
.end method


# virtual methods
.method public updateTrafficTable([J[J)V
    .locals 6
    .parameter "mobileBytes"
    .parameter "wifiBytes"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/monitor/widget/TrafficDetailPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f04

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, names:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/android/monitor/widget/TrafficDetailPanel;->mTableCells:[Landroid/widget/TextView;

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x0

    aget-object v2, v2, v3

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v2, p0, Lcom/android/monitor/widget/TrafficDetailPanel;->mTableCells:[Landroid/widget/TextView;

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/monitor/widget/TrafficDetailPanel;->mContext:Landroid/content/Context;

    rsub-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, -0x1

    aget-wide v4, p1, v4

    invoke-static {v3, v4, v5}, Lcom/android/monitor/util/SysUtils;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v2, p0, Lcom/android/monitor/widget/TrafficDetailPanel;->mTableCells:[Landroid/widget/TextView;

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x2

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/monitor/widget/TrafficDetailPanel;->mContext:Landroid/content/Context;

    rsub-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, -0x1

    aget-wide v4, p2, v4

    invoke-static {v3, v4, v5}, Lcom/android/monitor/util/SysUtils;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method
